// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EtPanDemo",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "EtPanDemo",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .byName(name: "clibetpan"),
            ],
            swiftSettings: [
                .unsafeFlags(["-I/opt/homebrew/include"])
            ],
            linkerSettings: [
                .unsafeFlags(["-Xlinker", "-L/opt/homebrew/lib"]),
                .linkedLibrary("iconv")
            ]
        ),

        .systemLibrary(
            name: "clibetpan",
            pkgConfig: "libetpan",
            providers: [
                .brew(["libetpan"]),
                .aptItem(["libetpan-dev"])
            ],
        ),

//            .systemLibrary(
//                name: "clibcurl",
//                pkgConfig: "clibcurl",
//                providers: [
//                    .brew(["clibcurl"]),
//                ]
//            )


    ]
)
