import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var window: NSWindow!
    let statusItem = NSStatusBar.system.statusItem(withLength: -2)
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        let menu = NSMenu()
        let menuItem = NSMenuItem()
        let statusSlider = NSSlider()
        
        statusSlider.setFrameSize(NSSize(width: 160, height: 16))
        
        menu.addItem(NSMenuItem(title: "Slider:", action: nil, keyEquivalent: ""))
        
        menuItem.title = "Slider 1"
        menuItem.view = statusSlider
        menu.addItem(menuItem)
        
        menu.addItem(NSMenuItem.separator())

        
        menu.addItem(NSMenuItem(title: "Quit", action: Selector("terminate:"), keyEquivalent: "q"))
        
        statusItem.image = NSImage(named: "NSStatusAvailable")
        statusItem.menu = menu

    }
}
