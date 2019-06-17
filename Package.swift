// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "rps-kata-kitura",
    dependencies: [
      .package(url: "https://github.com/IBM-Swift/Kitura.git", .upToNextMinor(from: "2.7.0")),
      .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.7.1"),
      .package(url: "https://github.com/IBM-Swift/CloudEnvironment.git", from: "9.0.0"),
      .package(url: "https://github.com/IBM-Swift/Health.git", from: "1.0.0"),
    ],
    targets: [
      .target(name: "rps-kata-kitura", dependencies: [ .target(name: "Application"), "Kitura" , "HeliumLogger"]),
      .target(name: "Application", dependencies: [ "Kitura", "CloudEnvironment", "Health"]),
      .testTarget(name: "ApplicationTests" , dependencies: [.target(name: "Application"), "Kitura","HeliumLogger"])
    ]
)
