// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "HyperioniOS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "HyperioniOS-Core",
            targets: ["HyperionCore"]
        ),
        .library(
            name: "HyperioniOS-AttributesInspector",
            targets: ["HyperioniOS-AttributesInspector"]
        ),
        .library(
            name: "HyperioniOS-SlowAnimations",
            targets: ["HyperioniOS-SlowAnimations"]
        ),
        .library(
            name: "HyperioniOS-Measurements",
            targets: ["HyperioniOS-Measurements"]
        )
    ],
    targets: [
        .target(
            name: "HyperionCore",
            dependencies: [],
            path: "Core",
            publicHeadersPath: "include"
        ),
        .target(
            name: "HyperioniOS-AttributesInspector",
            dependencies: ["HyperionCore"],
            path: "AttributesInspector",
            publicHeadersPath: "include"
        ),
        .target(
            name: "HyperioniOS-SlowAnimations",
            dependencies: ["HyperionCore"],
            path: "SlowAnimations",
            publicHeadersPath: "include"
        ),
        .target(
            name: "HyperioniOS-Measurements",
            dependencies: ["HyperionCore"],
            path: "Measurements",
            publicHeadersPath: "include"
        )
    ]
)
