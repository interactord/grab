// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "Platform",
  platforms: [.iOS(.v18)],
  products: [
    .library(
      name: "Platform",
      targets: ["Platform"]),
  ],
  dependencies: [
    .package(path: "../../Core/Domain"),
  ],
  targets: [
    .target(
      name: "Platform",
      dependencies: [
        "Domain",
      ]),
  ]
)
