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
  ],
  targets: [
    .target(
      name: "Architecture",
      dependencies: [
        
      ]),
  ]
)
