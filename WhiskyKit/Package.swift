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
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.1"), 
        .package(url: "https://github.com/realm/SwiftLint.git", from: "0.54.0"), 
        .package(url: "https://github.com/JohnSundell/CollectionConcurrencyKit.git",from:"0.2.0"), 
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git",from:"1.8.4"), 
        .package(url: "https://github.com/jkandzi/Progress.swift",from:"0.4.0"), 
        .package(url: "https://github.com/SwiftPackageIndex/SemanticVersion",from:"0.4.0"), 
        .package(url: "https://github.com/jpsim/SourceKitten.git",from:"0.35.0"), 
        .package(url: "https://github.com/sparkle-project/Sparkle",from:"2.7.0"), 
        .package(url: "https://github.com/apple/swift-argument-parser.git",from:"1.5.0"), 
        .package(url: "https://github.com/swiftlang/swift-syntax.git",from:"600.0.0"), 
        .package(url: "https://github.com/realm/swiftlint",from:"0.58.2"), 
        .package(url: "https://github.com/scottrhoyt/SwiftyTextTable",from:"0.9.0"), 
        .package(url: "https://github.com/drmohundro/SWXMLHash.git",from:"7.0.2"), 
        .package(url: "https://github.com/jpsim/Yams.git",from:"5.3.1")
    ]
    targets: [
        .target(
            name: "WhiskyKit",
            dependencies: ["SemanticVersion"]
        )
    ],
    swiftLanguageVersions: [.version("6")]
)
