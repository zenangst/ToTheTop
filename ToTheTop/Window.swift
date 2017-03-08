import Cocoa

class Window: NSWindow {

  convenience init() {
    let rect = NSRect(origin: CGPoint.zero, size: CGSize(width: 60,  height: 22))

    self.init(contentRect: rect,
              styleMask: .borderless,
              backing: .buffered,
              defer: false)

    styleMask = .borderless
    level = Int(CGWindowLevelForKey(CGWindowLevelKey.overlayWindow))
  }
}
