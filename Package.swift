// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CombineCombineLatestArity",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "CombineCombineLatestArity",
            type: .static,
            targets: ["CombineCombineLatestArity"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/tcldr/Entwine.git", from: "0.9.1"),
        .package(url: "https://github.com/krzysztofzablocki/Difference.git", .upToNextMinor(from: "1.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CombineCombineLatestArity",
            dependencies: []),
        .testTarget(
            name: "CombineCombineLatestArityTests",
            dependencies: ["CombineCombineLatestArity",
                           .product(name: "EntwineTest",
                                    package: "Entwine"),
                           "Difference"]),
    ]
)
