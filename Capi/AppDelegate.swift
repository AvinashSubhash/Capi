import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem!

    func applicationDidFinishLaunching(_ notification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        if let button = statusItem.button {
            button.image = NSImage(named: "capital-a-18")
            button.title = ""
            button.setAccessibilityLabel(isCapsLockOn() ? "Caps Lock is On" : "Caps Lock is Off")
        }
        
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
        statusItem.menu = menu

        NSEvent.addGlobalMonitorForEvents(matching: .flagsChanged) { [weak self] event in
            self?.updateCapsLockState(event: event)
        }
    }

    private func updateCapsLockState(event: NSEvent) {
        if let button = statusItem.button {
            button.image = event.modifierFlags.contains(.capsLock) ? NSImage(named: "capital-a-18") : NSImage(named: "small-a-18")
            button.title = ""
            button.setAccessibilityLabel(event.modifierFlags.contains(.capsLock) ? "Caps Lock is On" : "Caps Lock is Off")
        }
    }

    private func isCapsLockOn() -> Bool {
        return NSEvent.modifierFlags.contains(.capsLock)
    }
}
//
//  AppDelegate.swift
//  Capi
//
//  Created by Avinash S on 7/10/25.
//

