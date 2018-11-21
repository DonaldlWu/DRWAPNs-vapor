// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "DRWAPNs-vapor",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🔵 Swift ORM (queries, models, relations, etc) built on SQLite 3.
        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0"),
        
        // Perfect-Notification
        .package(url:"https://github.com/PerfectlySoft/Perfect-Notifications.git", from: "3.0.4")
    ],
    targets: [
        .target(name: "App", dependencies: ["FluentSQLite", "Vapor", "PerfectNotifications"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
