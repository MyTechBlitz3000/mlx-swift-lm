// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "MLXTest",

    platforms: [
        .iOS(.v17)
    ],

    dependencies: [
        .package(
            url: "https://github.com/ml-explore/mlx-swift.git",
            branch: "main"
        )
    ],

    targets: [
        .target(
            name: "MLXTest",
            dependencies: [
                .product(
                    name: "MLX",
                    package: "mlx-swift"
                )
            ]
        )
    ]
)
