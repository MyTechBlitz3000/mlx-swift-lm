// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "mlx-swift-lm",
    
    platforms: [
        .iOS(.v17)
    ],
    
    products: [
        .library(
            name: "MLXLLM",
            targets: ["MLXLLM"]
        )
    ],
    
    dependencies: [
        .package(
            url: "https://github.com/ml-explore/mlx-swift.git",
            from: "0.31.4"
        )
    ],
    
    targets: [
        .target(
            name: "MLXLLM",
            dependencies: [
                .product(name: "MLX", package: "mlx-swift"),
                .product(name: "MLXNN", package: "mlx-swift"),
                .product(name: "MLXOptimizers", package: "mlx-swift")
            ],
            path: "Libraries/MLXLLM"
        )
    ]
)
