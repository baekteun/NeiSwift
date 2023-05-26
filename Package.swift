// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NeiSwift",
    platforms: [.iOS(.v11), .macOS(.v11), .tvOS(.v11), .watchOS(.v4)],
    products: [
        .library(
            name: "NeiSwift",
            targets: ["NeiSwift"]
        ),
        .library(
            name: "CombineNeiSwift",
            targets: ["CombineNeiSwift"]
        ),
        .library(
            name: "AsyncNeiSwift",
            targets: ["AsyncNeiSwift"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "NeiSwift",
            dependencies: []
        ),
        .testTarget(
            name: "NeiSwiftTests",
            dependencies: ["NeiSwift"]
        ),
        .target(
            name: "CombineNeiSwift",
            dependencies: ["NeiSwift"]
        ),
        .target(
            name: "AsyncNeiSwift",
            dependencies: ["NeiSwift"]
        ),
    ]
)
