
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
            targets: ["CUELive", "CUEBluetooth", "engine"]
        ),
    ],
    targets: [
		.binaryTarget(
			name: "CUELive",
			url: "https://s3.amazonaws.com/swift-package-manager/binaries/CUELive/3.11.1/CUELive.3.11.1.xcframework.zip",
			checksum: "a898b5ff535356d90e488046d5587ef86ed8f027985b6ed897259abb05bfcdeb"
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
		)
	]
)
