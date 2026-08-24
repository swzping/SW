import Foundation
import CoreGraphics

let needle = CommandLine.arguments.count > 1 ? CommandLine.arguments[1] : ""
let ownerFilter = CommandLine.arguments.count > 2 ? CommandLine.arguments[2] : ""

guard let windows = CGWindowListCopyWindowInfo([.optionOnScreenOnly], kCGNullWindowID) as? [[String: Any]] else {
    fputs("failed to list windows\n", stderr)
    exit(1)
}

for window in windows {
    let owner = window[kCGWindowOwnerName as String] as? String ?? ""
    let name = window[kCGWindowName as String] as? String ?? ""
    if !ownerFilter.isEmpty && owner != ownerFilter { continue }
    if !needle.isEmpty && !name.contains(needle) { continue }
    let id = window[kCGWindowNumber as String] as? Int ?? 0
    let bounds = window[kCGWindowBounds as String] as? [String: Any] ?? [:]
    let x = bounds["X"] as? Int ?? 0
    let y = bounds["Y"] as? Int ?? 0
    let w = bounds["Width"] as? Int ?? 0
    let h = bounds["Height"] as? Int ?? 0
    print("\(id)\t\(owner)\t\(name)\t\(x),\(y),\(w),\(h)")
}
