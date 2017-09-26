// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "SwiftyBeaverKitura",
    products: [
        .library(name:"SwiftyBeaverKitura",targets:["SwiftyBeaverKitura"])
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", .upToNextMinor(from: "1.4.2")),
        .package(url: "https://github.com/IBM-Swift/LoggerAPI.git", .upToNextMinor(from: "1.7.1"))
    ],
    targets: [
        .target(name: "SwiftyBeaverKitura", dependencies: ["SwiftyBeaver","LoggerAPI"], path: "Sources"),
        .testTarget(name: "SwiftyBeaverKituraTests", dependencies: ["SwiftyBeaverKitura"])
    ]
)
