// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HyperioniOS",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        // Core framework
        .library(
            name: "HyperionCore",
            targets: ["HyperionCore"]),
        
        // Plugin - Attributes Inspector
        .library(
            name: "AttributesInspector",
            targets: ["AttributesInspector"]),
        
        // Plugin - Measurements
        .library(
            name: "Measurements",
            targets: ["Measurements"]),
        
        // Plugin - Slow Animations
        .library(
            name: "SlowAnimations",
            targets: ["SlowAnimations"]),
        
        // Convenience product that includes all plugins
        .library(
            name: "HyperioniOS",
            targets: ["HyperionCore", "AttributesInspector", "Measurements", "SlowAnimations"]),
    ],
    dependencies: [],
    targets: [
        // Core Target
        .target(
            name: "HyperionCore",
            dependencies: [],
            path: "Core",
            exclude: ["Info.plist"],
            resources: [
                .process("Resources")
            ],
            publicHeadersPath: "Public",
            cSettings: [
                .headerSearchPath("Public"),
                .headerSearchPath("Private"),
            ]
        ),
        
        // Attributes Inspector Plugin
        .target(
            name: "AttributesInspector",
            dependencies: ["HyperionCore"],
            path: "AttributesInspector",
            exclude: ["Info.plist"],
            resources: [
                .process("Resources")
            ],
            publicHeadersPath: "Public",
            cSettings: [
                .headerSearchPath("Public"),
                .headerSearchPath("Private"),
            ]
        ),
        
        // Measurements Plugin
        .target(
            name: "Measurements",
            dependencies: ["HyperionCore"],
            path: "Measurements",
            exclude: ["Info.plist"],
            resources: [
                .process("Resources")
            ],
            publicHeadersPath: "Public",
            cSettings: [
                .headerSearchPath("Public"),
                .headerSearchPath("Private"),
            ]
        ),
        
        // Slow Animations Plugin
        .target(
            name: "SlowAnimations",
            dependencies: ["HyperionCore"],
            path: "SlowAnimations",
            exclude: ["Info.plist"],
            resources: [
                .process("Resources")
            ],
            publicHeadersPath: "Public",
            cSettings: [
                .headerSearchPath("Public"),
                .headerSearchPath("Private"),
            ]
        ),
    ]
)
