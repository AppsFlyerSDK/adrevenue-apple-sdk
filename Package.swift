// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "adrevenue-apple-sdk",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "adrevenue-apple-sdk",
            targets: ["adrevenue-appsflyer"]),
        .import()
    ],

    dependencies: [
        .package(url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework-Static", from: "6.12.1"),
    ],

    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "adrevenue-apple-sdk",
            path: "iOS/AppsFlyerAdRevenue.xcframework"
        ),
        .target(
            name: "adrevenue-appsflyer",
            dependencies: [
                "AppsFlyerFramework-Static",
                .target(name: "adrevenue-apple-sdk")
                ],
            path: "adrevenue-appsflyer"
        )
    ]
)
