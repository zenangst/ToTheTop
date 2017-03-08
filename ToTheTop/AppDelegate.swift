import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  var window: NSWindow?

  func applicationDidFinishLaunching(_ notification: Notification) {
    let window = Window()
    let point = Screen.topCenterPoint(for: window)

    window.backgroundColor = NSColor.green
    window.setFrameOrigin(point)
    window.makeKeyAndOrderFront(nil)

    self.window = window
  }
}
