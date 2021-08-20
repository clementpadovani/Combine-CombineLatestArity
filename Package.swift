// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CombineCombineLatestArity",
    platforms: [.iOS(.v13),
                .macOS(.v10_15),
                .tvOS(.v13),
                .watchOS(.v6)],
    products: [
        .library(
            name: "CombineCombineLatestArity",
            type: .static,
            targets: ["CombineCombineLatestArity"]),
    ],
    dependencies: [
        .package(url: "https://github.com/tcldr/Entwine.git", from: "0.9.1"),
        .package(url: "https://github.com/krzysztofzablocki/Difference.git", .upToNextMinor(from: "1.0.0"))
    ],
    targets: [
        .target(
            name: "CombineCombineLatestArity",
            dependencies: []),
        .testTarget(
            name: "CombineCombineLatestArityTests",
            dependencies: ["CombineCombineLatestArity",
                           .product(name: "EntwineTest",
                                    package: "Entwine"),
                           "Difference"]),
    ],
    swiftLanguageVersions: [.v5]
)
