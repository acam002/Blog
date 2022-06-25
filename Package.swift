// swift-tools-version:5.5

import PackageDescription
import Darwin

let package = Package(
    name: "Blog",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(name: "Blog", targets: ["Blog"]),
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.9.0"),
        .package(url: "https://github.com/johnsundell/splashpublishplugin", from: "0.2.0")
    ],
    targets: [
        .target(
            name: "Blog",
            dependencies: [
                .product(name: "Publish", package: "publish"),
                .product(name: "SplashPublishPlugin", package: "SplashPublishPlugin")
            ]
                
        )
    ]
)
