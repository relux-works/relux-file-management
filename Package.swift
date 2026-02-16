// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "relux-file-management",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "FileManagementModule",
            targets: ["FileManagementModule"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/relux-works/swift-relux.git", .upToNextMajor(from: "9.0.0")),
        .package(url: "https://github.com/relux-works/swift-httpclient.git", .upToNextMajor(from: "6.0.0")),
        .package(url: "https://github.com/relux-works/darwin-foundationplus.git", .upToNextMajor(from: "3.0.0")),
        .package(url: "https://github.com/relux-works/swift-stdlibplus.git", .upToNextMajor(from: "3.0.0"))
    ],
    targets: [
        .target(
            name: "FileManagementModule",
            dependencies: [
                .product(name: "Relux", package: "swift-relux"),
                .product(name: "HttpClient", package: "swift-httpclient"),
                .product(name: "FoundationPlus", package: "darwin-foundationplus"),
                .product(name: "SwiftPlus", package: "swift-stdlibplus"),
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "FileManagementModuleTests",
            dependencies: ["FileManagementModule"],
            path: "Tests"
        ),
    ]
)
