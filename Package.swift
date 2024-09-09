// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CUELive",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "CUELive",
            targets: ["CueLightShow", "CUELiveWrapper", "CUEBluetooth", "engine", "TrueTime", "MQTTClient", "SocketRocket"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "CUELiveWrapper",
            dependencies: [
                .target(name: "CUELive"),
                .product(name: "Lottie", package: "lottie-spm"),
            ],
            path: "CUELiveWrapper"
        ),
        .binaryTarget(
             name: "CUELive",
             url: "https://s3.amazonaws.com/swift-package-manager/binaries/CUELive/3.9.11/CUELive.xcframework.zip",
             checksum: "eba0553b9af0a32363e30250d93695d824f1999f734ebebc1bbc3ac4c027a974"
         ),
        .binaryTarget(
             name: "CueLightShow",
             url: "https://s3.amazonaws.com/swift-package-manager/binaries/CueLightShow/0.0.14/CueLightShow.xcframework.zip",
             checksum: "b744b8f4f6c686c1bd9daecf44cb623f95e92cff9d1c69f081c2e896459c5356"
         ),
        .binaryTarget(
            name: "CUEBluetooth",
            url: "https://s3.amazonaws.com/swift-package-manager/CUEBluetooth/0.0.12/CUEBluetooth.0.0.12.xcframework.zip",
            checksum: "7f352450c746ddcb70d69982c8b59edffe636ff2fda05e239f51f9158416214d"
        ),
        .binaryTarget(
            name: "engine",
            url: "https://s3.amazonaws.com/swift-package-manager/engine/1.52.0/engine.1.52.0.xcframework.zip",
            checksum: "3ed7fcb77984b89f92b9952140fcfb97ce162a3cf9c0d36868a11a3dd19aea73"
        ),
        .binaryTarget(
            name: "TrueTime",
            url: "https://s3.amazonaws.com/swift-package-manager/TrueTime/5.1.0/TrueTime.5.1.0.xcframework.zip",
            checksum: "4bab1fc882c66a72a7cdd14d2de7aa2a958dec1d8911b623440646a611f0dc92"
        ),
        .binaryTarget(
            name: "MQTTClient",
            url: "https://s3.amazonaws.com/swift-package-manager/MQTTClient/0.15.3/MQTTClient.0.15.3.xcframework.zip",
            checksum: "c6392d6411652f7374f0bc20a6f46519a3ab3ef9ed047669c8a40861bb1fb173"
        ),
        .binaryTarget(
            name: "SocketRocket",
            url: "https://s3.amazonaws.com/swift-package-manager/SocketRocket/0.5.1/SocketRocket.0.5.1.xcframework.zip",
            checksum: "0a8e220d9b5391f14d0b6e5f90c31414500055d241e8b10fb58f1d91a4c5c0bd"
        )
    ]
)
