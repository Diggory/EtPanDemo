# Swift EtPanDemo

A small demo SwiftPM package which shows how to use a Homebrew library on macOS as a `.systemLibrary` dependency.

In this case the brew installed library does not have package config file, so SwiftPM cannot automatically infer the paths for the lib headers and binaries, so we must manually provide them.

[SwiftPM System Library Docs](https://docs.swift.org/swiftpm/documentation/packagemanagerdocs/addingsystemlibrarydependency/#Overview)

[Swift Forums Post that triggered this](https://forums.swift.org/t/swiftpm-in-xcode-cant-find-include-directories-for-a-c-library-on-homebrew/83016/4)
