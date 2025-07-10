import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem!

    func applicationDidFinishLaunching(_ notification: Notification) {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusItem.button?.title = isCapsLockOn() ? "Caps lock: On" : "Caps lock: Off"

        NSEvent.addGlobalMonitorForEvents(matching: .flagsChanged) { [weak self] event in
            self?.updateCapsLockState(event: event)
        }
    }

    private func updateCapsLockState(event: NSEvent) {
        statusItem.button?.title = event.modifierFlags.contains(.capsLock) ? "Caps lock: On" : "Caps lock: Off"
        statusItem.button?.image = NSImage(named: "captial-a")
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

