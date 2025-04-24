// swift-tools-version:5.7
import PackageDescription
let package = Package(
    name: "MaterialComponents",
    products: [
        .library(
            name: "MaterialComponents",
            targets: ["MaterialComponents"])
    ],
    targets: [
        .binaryTarget(
            name: "MaterialComponents",
            url: "https://github.com/prongbang/material-components-ios-spm/releases/download/124.2.0/MaterialComponents.xcframework.zip",
            checksum: "d7b83a1bc307dbddb44ecdd0c031752fa26a872e51232fa59ecfc02068b3bc2a"
        )
    ]
)