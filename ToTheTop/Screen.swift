import Cocoa

struct Screen {

  static var main: NSScreen {
    return NSScreen.main()!
  }

  static var size: CGSize {
    return main.frame.size
  }

  static func topCenterPoint(for window: NSWindow) -> CGPoint {
    let point = CGPoint(x: size.width / 2 - window.frame.size.width / 2,
                        y: size.height - window.frame.size.height)

    return point
  }
}
