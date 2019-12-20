// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MerchantKit",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "MerchantKit",
            targets: ["MerchantKit"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "MerchantKit",
            dependencies: [
                
            ],
            path: "./Source"
        ),
    ]
)
