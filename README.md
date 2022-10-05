# ghidra-launcher
Simple macOS ghidra SRE suite launcher. The application compiles with a startup line inside and allows you to add it to Launchpad.

# Preparation
* Remove com.apple.quarantine attribute from `<ghidra_root>/ghidraRun`: `xattr -d com.apple.quarantine <full_path>/ghidra_10.1.5_PUBLIC/ghidraRun`
* Remove com.apple.quarantine attribute from `<ghidra_root>/support/launch.sh`: `xattr -d com.apple.quarantine <full_path>/ghidra_10.1.5_PUBLIC/support/launch.sh`

After that just move compiled app from `/Users/username/Library/Developer/Xcode/DerivedData/ghidra-*/Build/products/Debug` to `Application Folder`
