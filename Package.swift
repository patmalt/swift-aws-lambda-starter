// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftAwsLambdaStarter",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(name: "SwiftAwsLambdaStarter", targets: ["SwiftAwsLambdaStarter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", from: "0.3.0"),
        .package(url: "https://github.com/soto-project/soto.git", from: "5.0.0-rc.1.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftAwsLambdaStarter",
            dependencies: [
                .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
                .product(name: "AWSLambdaEvents", package: "swift-aws-lambda-runtime"),
                .product(name: "SotoDynamoDB", package: "soto")
            ]
        ),
        .testTarget(
            name: "SwiftAwsLambdaStarterTests",
            dependencies: ["SwiftAwsLambdaStarter"]),
    ]
)
