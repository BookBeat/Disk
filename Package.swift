// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Disk",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "Disk", targets: ["Disk"])
    ],
    targets: [
        .target(
            name: "Disk",
            path: "Sources",
            resources: [.process("PrivacyInfo.xcprivacy")]
        ),
        .testTarget(
            name: "DiskTests",
            dependencies: ["Disk"],
            path: "Tests"
        )
    ]
)
