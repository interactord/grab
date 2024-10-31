// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "Architecture",
  platforms: [.iOS(.v18)],
  products: [
    .library(
      name: "Architecture",
      targets: ["Architecture"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/pointfreeco/swift-composable-architecture.git",
      from: "1.15.2"),
    .package(
      url: "https://github.com/forXifLess/LinkNavigator.git",
      from: "1.2.9"),
  ],
  targets: [
    .target(
      name: "Architecture",
      dependencies: [
        .product(name: "LinkNavigator", package: "LinkNavigator"),
        .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
      ]),
  ]
)
