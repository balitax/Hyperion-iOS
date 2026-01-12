// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HyperioniOS",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "HyperioniOS", targets: ["HyperioniOS"]),
        .library(name: "HyperioniOS_Core", targets: ["HyperioniOS_Core"]),
        .library(name: "HyperioniOS_AttributesInspector", targets: ["HyperioniOS_AttributesInspector"]),
        .library(name: "HyperioniOS_Measurements", targets: ["HyperioniOS_Measurements"]),
        // ... plugin lainnya
    ],
    dependencies: [
        // biasanya hampir tidak ada dependency eksternal
    ],
    targets: [
        .target(name: "HyperioniOS_Core", path: "Core"),
        .target(name: "HyperioniOS_AttributesInspector", dependencies: ["HyperioniOS_Core"], path: "Plugins/AttributesInspector"),
        .target(name: "HyperioniOS_Measurements", dependencies: ["HyperioniOS_Core"], path: "Plugins/Measurements"),
        // dst...
    ]
)
