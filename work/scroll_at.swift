import Foundation
import CoreGraphics

let x = CommandLine.arguments.count > 1 ? Double(CommandLine.arguments[1]) ?? 1000 : 1000
let y = CommandLine.arguments.count > 2 ? Double(CommandLine.arguments[2]) ?? 700 : 700
let amount = CommandLine.arguments.count > 3 ? Int32(CommandLine.arguments[3]) ?? -8 : -8

let move = CGEvent(mouseEventSource: nil, mouseType: .mouseMoved, mouseCursorPosition: CGPoint(x: x, y: y), mouseButton: .left)
move?.post(tap: .cghidEventTap)
usleep(100_000)

let scroll = CGEvent(
    scrollWheelEvent2Source: nil,
    units: .line,
    wheelCount: 1,
    wheel1: amount,
    wheel2: 0,
    wheel3: 0
)
scroll?.post(tap: .cghidEventTap)
