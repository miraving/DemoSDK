// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IntellicheckSDK",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(name: "IntellicheckSDK", targets: [
            "IntellicheckFRMW",
            "DocumentReader",
            "DocumentReaderCore",
            "RegulaCommon",
            "Lottie"
        ])
    ],
    targets: [
        .binaryTarget(
            name: "IntellicheckFRMW",
            path: "./Sources/Intellicheck.xcframework"
        ),
        .binaryTarget(
            name: "DocumentReader",
            path: "./Sources/Frameworks/DocumentReader.xcframework"
        ),
        .binaryTarget(
            name: "DocumentReaderCore",
            path: "./Sources/Frameworks/DocumentReaderCore.xcframework"
        ),
        .binaryTarget(
            name: "RegulaCommon",
            path: "./Sources/Frameworks/RegulaCommon.xcframework"
        ),
        .binaryTarget(
            name: "Lottie",
            path: "./Sources/Frameworks/Lottie.xcframework"
        )
    ]
)

