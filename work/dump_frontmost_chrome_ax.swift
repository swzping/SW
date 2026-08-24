import Foundation
import ApplicationServices
import AppKit

func copyAttribute(_ element: AXUIElement, _ attribute: String) -> AnyObject? {
    var value: CFTypeRef?
    let error = AXUIElementCopyAttributeValue(element, attribute as CFString, &value)
    guard error == .success, let value else { return nil }
    return value
}

func stringValue(_ any: AnyObject?) -> String {
    guard let any else { return "" }
    if CFGetTypeID(any) == AXValueGetTypeID() {
        let axValue = any as! AXValue
        let type = AXValueGetType(axValue)
        if type == .cgPoint {
            var point = CGPoint.zero
            guard AXValueGetValue(axValue, .cgPoint, &point) else { return "" }
            return "\(Int(point.x)),\(Int(point.y))"
        }
        if type == .cgSize {
            var size = CGSize.zero
            guard AXValueGetValue(axValue, .cgSize, &size) else { return "" }
            return "\(Int(size.width)),\(Int(size.height))"
        }
        return ""
    }
    if let value = any as? String { return value.replacingOccurrences(of: "\t", with: " ").replacingOccurrences(of: "\n", with: " ") }
    if let value = any as? NSNumber { return value.stringValue }
    if let value = any as? URL { return value.absoluteString }
    if let value = any as? NSAttributedString { return value.string.replacingOccurrences(of: "\t", with: " ").replacingOccurrences(of: "\n", with: " ") }
    return String(describing: any).replacingOccurrences(of: "\t", with: " ").replacingOccurrences(of: "\n", with: " ")
}

func dump(element: AXUIElement, depth: Int, lines: inout [String]) {
    let role = stringValue(copyAttribute(element, kAXRoleAttribute))
    let title = stringValue(copyAttribute(element, kAXTitleAttribute))
    let desc = stringValue(copyAttribute(element, kAXDescriptionAttribute))
    let value = stringValue(copyAttribute(element, kAXValueAttribute))
    let url = stringValue(copyAttribute(element, kAXURLAttribute))
    lines.append([String(depth), role, title, desc, value, url].joined(separator: "\t"))

    guard let children = copyAttribute(element, kAXChildrenAttribute) as? [AXUIElement] else { return }
    for child in children {
        dump(element: child, depth: depth + 1, lines: &lines)
    }
}

let chrome = NSRunningApplication.runningApplications(withBundleIdentifier: "com.google.Chrome").first
guard let chrome else {
    fputs("Google Chrome is not running\n", stderr)
    exit(1)
}

let app = AXUIElementCreateApplication(chrome.processIdentifier)
guard let windows = copyAttribute(app, kAXWindowsAttribute) as? [AXUIElement], let frontWindow = windows.first else {
    fputs("No Chrome window found\n", stderr)
    exit(1)
}

let windowTitle = stringValue(copyAttribute(frontWindow, kAXTitleAttribute))
let position = stringValue(copyAttribute(frontWindow, kAXPositionAttribute))
let size = stringValue(copyAttribute(frontWindow, kAXSizeAttribute))
let linesHeader = "depth\trole\ttitle\tdesc\tvalue\turl"
var lines = [linesHeader]
dump(element: frontWindow, depth: 1, lines: &lines)

let pageURL = lines.dropFirst().first(where: { $0.contains("AXWebArea") })?.split(separator: "\t").last.map(String.init) ?? ""

FileHandle.standardError.write(Data("\(pageURL)\n\(windowTitle)\n\(position),\(size)\n".utf8))
print(lines.joined(separator: "\n"))
