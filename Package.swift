// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Hyperion-iOS",
  platforms: [
     .iOS(.v13)
  ],
  products: [
    .library(
      name: "Hyperion-iOS",
      targets: ["HyperionCore", "SlowAnimations", "Measurements", "AttributesInspector"]
    )
  ],
  targets: [
    .target(name: "HyperionCore"),
    .target(name: "SlowAnimations"),
    .target(name: "Measurements"),
    .target(name: "AttributesInspector")
  ]
)
