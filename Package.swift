// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Macaw",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "Macaw", 
            targets: ["Macaw"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/ZevEisenberg/SWXMLHash", .branch("main")
        )
    ],
    targets: [
        .target(
            name: "Macaw",
            dependencies: ["SWXMLHash"],
            path: "Source"
        ),
        .testTarget(
            name: "MacawTests",
            dependencies: ["Macaw"],
            path: "MacawTests"
        )
    ],
    swiftLanguageVersions: [.v5]
)
