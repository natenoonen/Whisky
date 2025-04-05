// swift-tools-version: 5.9
//
//  PortableExecutable.swift
//  WhiskyKit
//
//  This file is part of Whisky.
//
//  Whisky is free software: you can redistribute it and/or modify it under the terms
//  of the GNU General Public License as published by the Free Software Foundation,
//  either version 3 of the License, or (at your option) any later version.
//
//  Whisky is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
//  without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
//  See the GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License along with Whisky.
//  If not, see https://www.gnu.org/licenses/.
//
import PackageDescription

let package = Package(
    name: "WhiskyKit",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "WhiskyKit",
            targets: ["WhiskyKit"]
        )
    ],
    dependencies: [
      .package(url: "git@github.com:SwiftPackageIndex/SemanticVersion.git", from: "0.3.0"),
      .package(url: "https://github.com/JohnSundell/CollectionConcurrencyKit.git", from: "0.1.0"),
      .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.8.3"),
      .package(url: "https://github.com/jkandzi/Progress.swift", from: "0.4.0"),
      .package(url: "https://github.com/sparkle-project/Sparkle", branch: "2.x"),
      .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.3"),
      .package(url: "https://github.com/scottrhoyt/SwiftyTextTable", from: "0.9.0"),
      .package(url: "https://github.com/jpsim/SourceKitten.git", from: "0.35.0"),
      .package(url: "https://github.com/drmohundro/SWXMLHash.git", from: "7.0.0"),
      .package(url: "https://github.com/jpsim/Yams.git", from: "5.1.3"),
      .package(url: "https://github.com/swiftlang/swift-syntax.git", from: "601.0.1"),
      .package(url: "https://github.com/realm/swiftlint", from: "0.58.2")    
    ],
    targets: [
        .target(
            name: "WhiskyKit",
            dependencies: [
                .product(name: "SemanticVersion", package: "SemanticVersion"),
                .product(name: "CollectionConcurrencyKit", package: "CollectionConcurrencyKit"),
                .product(name: "CryptoSwift", package: "CryptoSwift"),
                .product(name: "Progress", package: "Progress.swift"),
                .product(name: "Sparkle", package: "Sparkle"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "SwiftyTextTable", package: "SwiftyTextTable"),
                .product(name: "SourceKitten", package: "SourceKitten"),
                .product(name: "SWXMLHash", package: "SWXMLHash"),
                .product(name: "Yams", package: "Yams"),
                .product(name: "swift-syntax", package: "swift-syntax"),
                .product(name: "swiftlint", package: "swiftlint"),
            ]
        )
    ],
    swiftLanguageVersions: [.version("6")]
)
