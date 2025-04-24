// swift-tools-version:5.7
import PackageDescription
let package = Package(
    name: "MaterialComponents",
    products: [
        .library(
            name: "MaterialComponents",
            targets: ["MaterialComponentsWrapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/prongbang/material-internationalization-ios.git", branch: "main"),
        .package(url: "https://github.com/prongbang/material-text-accessibility-ios.git", branch: "main"),
    ],
    targets: [
        .binaryTarget(
            name: "MaterialComponents",
            url: "https://github.com/prongbang/material-components-ios-spm/releases/download/124.2.0/MaterialComponents.xcframework.zip",
            checksum: "d7b83a1bc307dbddb44ecdd0c031752fa26a872e51232fa59ecfc02068b3bc2a"
        ),
        .target(
            name: "MaterialComponentsWrapper",
            dependencies: [
                "MaterialComponents",
                .product(name: "MDFInternationalization", package: "material-internationalization-ios"),
                .product(name: "MDFTextAccessibility", package: "material-text-accessibility-ios"),
            ],
            path: "Sources/MaterialComponentsWrapper"
        )
    ]
)