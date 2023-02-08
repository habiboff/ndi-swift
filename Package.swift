// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ndi-swift",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "ndi-swift",
            targets: ["ndi-swift"])
    ],
    dependencies: [],
    targets: [
        .systemLibrary(name: "CiOSNDI"),
        .target(
            name: "ndi-swift",
            dependencies: ["CiOSNDI"],
            linkerSettings: [
                .linkedFramework("Accelerate"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("c++")
            ]
        ),
//        .testTarget(
//            name: "swift-ndiTests",
//            dependencies: ["swift-ndi"]),
    ]
    
)
