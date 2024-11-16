// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WordLists",
    platforms: [
        .iOS(.v14), .macOS(.v11), .watchOS(.v7), .tvOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "WordLists",
            targets: ["WordLists"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "WordLists",
            resources: [
                .process("csv")
            ]
        ),
        .testTarget(
            name: "WordListsTests",
            dependencies: ["WordLists"]
        ),
    ]
)
