// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppsFlyerAdRevenue",
    products: [
        .library(
            name: "AppsFlyerAdRevenue",
            targets: ["AppsFlyerAdRevenue"])
    ],
    dependencies: [
        .package(url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework-Static", from: "6.12.1"),
    ],
    targets: [
        .binaryTarget(
            name: "AppsFlyerAdRevenue",
            path: "iOS/AppsFlyerAdRevenue.xcframework"
        )
    ]
)
