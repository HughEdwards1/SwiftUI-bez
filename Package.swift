// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bez",
    platforms: [.iOS(.v13), .macOS(.v10_15), .watchOS(.v6)],
    products: [
        .library(
            name: "bez",
            targets: ["bez"]),
    ],
    dependencies: [
        .package(url: "https://github.com/HughEdwards1/CGExtender", from: "1.0.3")
    ],
    targets: [
        .target(
            name: "bez",
            dependencies: ["CGExtender"]),
        .testTarget(
            name: "bezTests",
            dependencies: ["bez"]),
    ]
)
