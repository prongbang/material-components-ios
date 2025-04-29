// swift-tools-version:5.7
import PackageDescription
let package = Package(
    name: "MaterialComponents",
    products: [
        .library(
            name: "MaterialComponents",
            targets: ["MaterialComponentsPackage", "MDFInternationalizationPackage", "MDFTextAccessibilityPackage"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/prongbang/material-internationalization-ios.git", exact: "1.0.0"),
        .package(url: "https://github.com/prongbang/material-text-accessibility-ios.git", exact: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "MaterialComponentsPackage",
            url: "https://github.com/prongbang/material-components-ios-spm/releases/download/124.2.0/MaterialComponents.xcframework.zip",
            checksum: "d7b83a1bc307dbddb44ecdd0c031752fa26a872e51232fa59ecfc02068b3bc2a"
        ),
        .target(
            name: "MDFInternationalizationPackage",
            dependencies: [
                .product(name: "MDFInternationalization", package: "material-internationalization-ios")
            ]
        ),
        .target(
            name: "MDFTextAccessibilityPackage",
            dependencies: [
                .product(name: "MDFTextAccessibility", package: "material-text-accessibility-ios")
            ]
        )
    ]
)
