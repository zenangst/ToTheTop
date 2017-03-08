import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  var window: NSWindow?

  func applicationDidFinishLaunching(_ notification: Notification) {
    window = NSWindow()
    window?.styleMask = [.borderless]
    window?.makeKeyAndOrderFront(nil)
  }
}
