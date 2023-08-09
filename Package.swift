// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "adrevenue-apple-sdk",
    products: [
        .library(
            name: "adrevenue-apple-sdk",
            targets: ["adrevenue-apple-sdk"])
    ],

    targets: [
        .binaryTarget(
            name: "adrevenue-apple-sdk",
            path: "iOS/AppsFlyerAdRevenue.xcframework"
        )
    ]
)
