// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MaterialComponents",
    products: [
        .library(
            name: "MaterialComponents",
            targets: ["MaterialComponents", "MDFInternationalization", "MDFTextAccessibility"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/prongbang/material-internationalization-ios.git", exact: "1.0.0"),
        .package(url: "https://github.com/prongbang/material-text-accessibility-ios.git", exact: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "MaterialComponents",
            url: "https://github.com/prongbang/material-components-ios-spm/releases/download/124.2.0/MaterialComponents.xcframework.zip",
            checksum: "d7b83a1bc307dbddb44ecdd0c031752fa26a872e51232fa59ecfc02068b3bc2a"
        ),
        // This just forwards the dependency products
        .target(
            name: "MDFInternationalization",
            dependencies: [
                .product(name: "MDFInternationalization", package: "material-internationalization-ios")
            ],
            path: "Sources",
            sources: ["Dummy.swift"]
        ),
        .target(
            name: "MDFTextAccessibility",
            dependencies: [
                .product(name: "MDFTextAccessibility", package: "material-text-accessibility-ios")
            ],
            path: "Sources",
            sources: ["Dummy.swift"]
        )
    ]
)
