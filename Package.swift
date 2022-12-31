// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "afterparty-models-swift",
  platforms: [.iOS(.v16), .macOS(.v13)],
  products: [
    .library(
      name: "afterparty-models-swift",
      targets: ["afterparty-models-swift"]),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "afterparty-models-swift",
      dependencies: []),
    .testTarget(
      name: "afterparty-models-swiftTests",
      dependencies: ["afterparty-models-swift"]),
  ]
)
