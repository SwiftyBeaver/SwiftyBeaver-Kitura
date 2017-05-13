// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "SwiftyBeaverKitura",
    dependencies: [
        .Package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver.git", majorVersion: 1),
        .Package(url: "https://github.com/IBM-Swift/LoggerAPI.git", majorVersion:1, minor: 7)
    ]
)
