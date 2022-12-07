// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TableArkhypchuk",
    platforms: [.iOS(.v13)],
    products: [
       
        .library(
            name: "TableArkhypchuk",
            
            targets: ["TableArkhypchuk"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "TableArkhypchuk",
            dependencies: []),
        .testTarget(
            name: "TableArkhypchukTests",
            dependencies: ["TableArkhypchuk"]),
    ]
)
