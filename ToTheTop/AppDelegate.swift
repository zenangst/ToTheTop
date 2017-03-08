import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  var window: NSWindow?

  func applicationDidFinishLaunching(_ notification: Notification) {
    let window = Window()
    let point = Screen.topCenterPoint(for: window)

    window.backgroundColor = .clear
    window.setFrameOrigin(point)
    window.ignoresMouseEvents = true
    window.orderFront(nil)

    NSEvent.addGlobalMonitorForEvents(matching: .leftMouseUp) { (event) in
      guard window.frame.contains(event.locationInWindow) else {
        return
      }

      Keyboard.sendEvent(key: .homeKey)
    }

    self.window = window
  }
}
