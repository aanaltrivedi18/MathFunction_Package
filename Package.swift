// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MathFunction_Package",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MathFunction_Package",
            targets: ["MathFunction_Package"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/aanaltrivedi18/Greet_User_Package", from: "1.0.0"),
        .package(url: "https://github.com/aanaltrivedi18/Logger_Package", from: "1.0.0")

    ],
    
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MathFunction_Package",
            dependencies: [
                .product(name: "Greet_User_Package", package: "Greet_User_Package"),
                .product(name: "Logger_Package", package: "Logger_Package")
            ]
        ),

    ]
)
