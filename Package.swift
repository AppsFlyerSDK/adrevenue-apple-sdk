// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "adrevenue-apple-sdk",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "adrevenue-apple-sdk",
            targets: ["adrevenue-appsflyer","AppsFlyerLib-test"]),
    ],

    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework.git", from: "6.12.1")
    ],

    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "adrevenue-apple-sdk",
            path: "iOS/AppsFlyerAdRevenue.xcframework"
        ),
        .binaryTarget(
            name: "AppsFlyerLib",
            url: "https://github.com/AppsFlyerSDK/AppsFlyerFramework/releases/download/6.12.1/AppsFlyerLib.xcframework.zip",
            checksum: "5d418a84ec708e6142f4eb228d6163c0693559c31a67b741e4dd816fb20f662e"
        ),
        .target(name: "adrevenue-appsflyer",
                dependencies: [
                    .target(name: "adrevenue-apple-sdk")
                ],
                path: "adrevenue-appsflyer"
        ),
        .target(name: "AppsFlyerLib-test",
                dependencies: [
                    .target(name: "AppsFlyerLib")
                ],
                path: "adrevenue-appsflyer"
        )
    ]
)
