// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CBORCoding",

    platforms: [
        .iOS("12.0"),
        .macOS("10.12"),
        .tvOS("12.0"),
        .watchOS("3.0"),
    ],

    products: [
        .library(name: "CBORCoding", targets: ["CBORCoding"])
    ],

    dependencies: [
        .package(url: "https://github.com/roxiemobile-forks/Half", .exact("1.3.1-patch.1"))
    ],

    targets: [
        .target(name: "CBORCoding", dependencies: ["Half"]),
        .testTarget(name: "CBORCodingTests", dependencies: ["CBORCoding", "Half"])
    ],

    swiftLanguageVersions: [.version("4.2"), .version("5")]
)
