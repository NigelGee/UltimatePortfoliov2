//
//  AssetsTests.swift
//  UltimatePortfolioTests
//
//  Created by Nigel Gee on 28/07/2023.
//

import XCTest
@testable import UltimatePortfolio

final class AssetsTests: XCTestCase {
    func testColorsExist() {
        let allColors = ["Dark Blue", "Dark Gray", "Gold", "Gray", "Green",
                         "Light Blue", "Midnight", "Orange", "Pink", "Purple", "Red", "Teal"]

        for color in allColors {
            XCTAssertNotNil(UIColor(named: color), "Failed to load color '\(color) from asset catalog.")
        }
    }

    func testAwardLoadCorrectly() {
        XCTAssertTrue(Award.allAwards.isEmpty == false, "Failed to load awards from JSON.")
    }
}