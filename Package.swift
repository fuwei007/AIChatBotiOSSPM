// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    
    name: "AIChatBotiOSSPM",
    
    platforms: [
        .iOS(.v15),
    ],
    
    products: [
        .library(
            name: "AIChatBotiOSSPM",
            targets: ["AIChatBotiOSSPM"]
        ),
    ],
    
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream.git", exact: "4.0.8"),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager.git", from: "8.0.0"),
        .package(url: "https://github.com/alexpiezo/WebRTC.git", .upToNextMajor(from: "1.1.31567"))
    ],
    
    targets: [
        .target(
            name: "AIChatBotiOSSPM",
            dependencies: [
                "Starscream",
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                "WebRTC"],
            path: "Sources",
            resources: [
                .process("Assets")
            ]
        ),
    ]
)
