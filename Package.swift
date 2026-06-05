// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "MLXTest",

    platforms: [
        .iOS(.v17)
    ],

    products: [
        .library(
            name: "MLXTest",
            targets: ["MLXTest"]
        )
    ],

    dependencies: [
        .package(
            url: "https://github.com/ml-explore/mlx-swift.git",
            exact: "0.21.2"
        )
    ],

    targets: [
        .target(
            name: "MLXTest",
            dependencies: [
                .product(name: "MLX", package: "mlx-swift")
            ]
        )
    ]
)
