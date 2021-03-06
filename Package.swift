// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Blog",
    products: [
        .executable(name: "Blog", targets: ["Blog"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.3.0"),
        .package(url: "https://github.com/johnsundell/splashpublishplugin", from: "0.1.0"),
        .package(url: "https://github.com/SwiftyGuerrero/CNAMEPublishPlugin", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "Blog",
            dependencies: ["Publish", "SplashPublishPlugin", "CNAMEPublishPlugin"]
        )
    ]
)
