//
//  AppDelegate.swift
//  Ghidra Launcher
//
//  Created by sigseg5 on 04/10/2022.
//

import Cocoa

// Path to `ghidraRun`, e.g. `/Users/username/Documents/ghidra_10.1.5_PUBLIC/ghidraRun`
let ghidraPath = ""

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        let executableURL = URL(fileURLWithPath: "/bin/bash")
        do {
            try Process.run(executableURL,
                            arguments: [ghidraPath],
                            terminationHandler: nil)
            } catch {
                print(error)
                print("FATAL err: can't launch ghidra. Check PATH's and com.apple.quarantine attribute for `<ghidra_root>/support/launch.sh`")
                exit(1)
            }
        exit(0)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

}
