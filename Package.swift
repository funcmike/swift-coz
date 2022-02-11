// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "swift-coz",
    products: [
        .library(
            name: "Coz",
            targets: ["Coz"]),
    ],
    targets: [
        .systemLibrary(name: "CCoz"),
        .target(
            name: "Coz",
            dependencies: ["CCoz"],  swiftSettings: [
                .unsafeFlags(["-Xfrontend", "-validate-tbd-against-ir=none"]) // due to https://bugs.swift.org/browse/SR-15629
            ])
    ]
)
