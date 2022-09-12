//
//  CalorieModelTests.swift
//  CalorieModelTests
//
//  Created by Will Boland on 9/11/22.
//

import XCTest
@testable import QuickCal

class CalorieModelTests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testCalorieModel_Success() throws {
        let model = CalorieModel(name: "Apple", amount: 0)
        XCTAssertEqual(model.name, "Apple")
        XCTAssertEqual(model.amount, 0)
    }
}
