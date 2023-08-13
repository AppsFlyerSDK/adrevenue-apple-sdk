// swift-tools-version: 5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "adrevenue-apple-sdk",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "adrevenue-apple-sdk",
            targets: ["adrevenue-apple-sdk"])
    ],
    dependencies: [
        .package(url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework.git", from: "6.10.1")
    ],
    targets: [
        .binaryTarget(
            name: "adrevenue-apple-sdk",
            path: "iOS/AppsFlyerAdRevenue.xcframework"
        )
    ]
)
