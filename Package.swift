// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MJRefresh",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "MJRefresh",
                 targets: ["MJRefresh"])
    ],
    targets: [
        .target(name: "MJRefresh",
                path: "MJRefresh",
                resources: [
                    .process("MJRefresh.bundle")
                ],
                cSettings: [
                    .define("MJ_USEING_SPM"),
                    .headerSearchPath("."),
                    .headerSearchPath("Base"),
                    .headerSearchPath("Custom/Footer/Auto"),
                    .headerSearchPath("Custom/Footer/Back"),
                    .headerSearchPath("Custom/Header"),
                    .headerSearchPath("Custom/Trailer")
                ])
    ],
    swiftLanguageVersions: [.v5]
)
