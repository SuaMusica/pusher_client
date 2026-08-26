// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pusher_client",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "pusher-client", targets: ["pusher_client"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/pusher/pusher-websocket-swift.git", .upToNextMinor(from: "10.1.0")),
    ],
    targets: [
        .target(
            name: "pusher_client",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "PusherSwift", package: "pusher-websocket-swift"),
            ],
            exclude: [
                "PusherClientPlugin.h",
                "PusherClientPlugin.m",
            ],
            resources: [
                // If your plugin requires a privacy manifest, for example if it uses any required
                // reason APIs, update the PrivacyInfo.xcprivacy file to describe your plugin's
                // privacy impact, and then uncomment these lines. For more information, see
                // https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
                // .process("PrivacyInfo.xcprivacy"),

                // If you have other resources that need to be bundled with your plugin, refer to
                // the following instructions to add them:
                // https://developer.apple.com/documentation/xcode/bundling-resources-with-a-swift-package
            ]
        )
    ]
)
