// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-parameter-packs-crash",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "swift-parameter-packs-crash",
            targets: ["swift-parameter-packs-crash"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "swift-parameter-packs-crash"),
        .testTarget(
            name: "swift-parameter-packs-crashTests",
            dependencies: ["swift-parameter-packs-crash"]),
    ]
)
