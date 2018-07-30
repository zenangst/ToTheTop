import CoreGraphics

/// http://stackoverflow.com/questions/3202629/where-can-i-find-a-list-of-mac-virtual-key-codes
enum Key: CGKeyCode {
  case homeKey = 0x73
}

class Keyboard {
  func sendEvent(key: Key) {
    guard let event = CGEvent.init(keyboardEventSource: nil,
                                   virtualKey: .init(key.rawValue),
                                   keyDown: true) else {
                                    return
    }
    event.post(tap: .cghidEventTap)
  }
}
