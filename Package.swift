// swift-tools-version:5.0

import PackageDescription

var targets: [PackageDescription.Target] = [
	.target(name: "Bolt", dependencies: ["PackStream", "NIO", "NIOSSL", "NIOTransportServices" ], path: "Sources"),
	.testTarget(name: "BoltTests", dependencies: ["Bolt"]),
]

let package = Package(

    name: "Bolt",

    platforms: [
        .macOS(.v10_14), 
		.iOS(.v12), 
		.tvOS(.v12),
    ],

	products: [
		.library(name: "Bolt", targets: ["Bolt"]),
	],
	dependencies: [
	    .package(url: "https://github.com/Neo4j-Swift/PackStream-swift.git", from: "1.1.2"),
	    .package(url: "https://github.com/apple/swift-nio.git", from: "2.8.0"),
	    .package(url: "https://github.com/apple/swift-nio-ssl.git", from: "2.4.0"),
	    .package(url: "https://github.com/apple/swift-nio-transport-services.git", from: "1.1.1"),
	],
	targets: targets
)
