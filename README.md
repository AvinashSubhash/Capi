# Capi

Capi is a lightweight macOS menu bar app that shows the current Caps Lock status using a custom icon. It is designed to be unobtrusive, accessible, and easy to use.

## Features
- Menu bar indicator for Caps Lock state
- Custom icons for Caps Lock ON and OFF
- No Dock icon (menu bar only)
- Simple menu with Quit option

## Screenshots

**Caps Lock ON:**

![Caps Lock On](screenshots/CapsLock-On.png)

**Caps Lock OFF:**

![Caps Lock Off](screenshots/CapsLock-Off.png)

## Installation

### Manual Build and Install

1. Build the app in Xcode (`Cmd+B`).
2. Locate the built `Capi.app` in `~/Library/Developer/Xcode/DerivedData/Capi-*/Build/Products/Debug/`.
3. Copy `Capi.app` to your `/Applications` folder.
4. Double-click to launch. The icon will appear in your menu bar.

### Package Install

- Download the latest zip file from the Package of the repository and unzip it. Then move the .app to /Applications

## Usage
- The menu bar icon changes based on the Caps Lock state.
- Click the icon to access the menu and quit the app.

## Development
- Written in Swift using AppKit.
- To modify icons, replace `capital-a-18.png` and `small-a-18.png` in the `Capi` directory.phoe
