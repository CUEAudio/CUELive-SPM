
// swift-tools-version:5.3
import PackageDescription


// This file is generated by GH-action push_swift_package_manager_version.yml
// From repo https://github.com/CUEAudio/LightShow_iOS
// Don't edit it manually

let package = Package(
    name: "CUELive",
    platforms: [
        .iOS(.v13),
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
			url: "https://s3.amazonaws.com/swift-package-manager/binaries/CUELive/3.9.12/CUELive.3.9.12.xcframework.zip",
			checksum: "cbdf76522ad9d971a2d7bbbea28be989351ed679ab888f0a7f77a3785289287d"
		),
        .binaryTarget(
             name: "CueLightShow",
             url: "https://s3.amazonaws.com/swift-package-manager/binaries/CueLightShow/0.0.14/CueLightShow.0.0.14.xcframework.zip",
             checksum: "b744b8f4f6c686c1bd9daecf44cb623f95e92cff9d1c69f081c2e896459c5356"
         ),
		.binaryTarget(
			name: "CUEBluetooth",
			url: "https://s3.amazonaws.com/swift-package-manager/binaries/CUEBluetooth/0.0.14/CUEBluetooth.0.0.14.xcframework.zip",
			checksum: "000140cace70ff115c40792e6585f52b21e8499dc0f5299126db3b8384291b6c"
		),
		.binaryTarget(
			name: "engine",
			url: "https://s3.amazonaws.com/swift-package-manager/binaries/engine/1.52.0/engine.1.52.0.xcframework.zip",
			checksum: "34b1d9d08c0792c4796f345c985a8457ccbfd60b16164de2edfe8ae64e17873c"
		),
		.binaryTarget(
			name: "TrueTime",
			url: "https://s3.amazonaws.com/swift-package-manager/binaries/TrueTime/5.1.0/TrueTime.5.1.0.xcframework.zip",
			checksum: "4bbd64ccd6fc9aab81fbf64889761f6d1fd39c4c100217809cfa0797f8eb774d"
		),
		.binaryTarget(
			name: "MQTTClient",
			url: "https://s3.amazonaws.com/swift-package-manager/binaries/MQTTClient/0.15.3/MQTTClient.0.15.3.xcframework.zip",
			checksum: "5302587047ef653610fbebb2a41d7abd410795e1b568e7c8c72f17c17a0e549f"
		),
		.binaryTarget(
			name: "SocketRocket",
			url: "https://s3.amazonaws.com/swift-package-manager/binaries/SocketRocket/0.5.1/SocketRocket.0.5.1.xcframework.zip",
			checksum: "5b46ecf3042923218b38a3581fe3b7088e0d3fd1e513425f30deb73987dd1eb0"
		)
	]
)
