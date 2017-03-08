import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  var window: NSWindow?

  func applicationDidFinishLaunching(_ notification: Notification) {
    let window = Window()
    let point = Screen.topCenterPoint(for: window)

    window.backgroundColor = NSColor.green
    window.setFrameOrigin(point)
    window.ignoresMouseEvents = true
    window.orderFront(nil)

    self.window = window
  }
}
