//
//  ContentViewUITests.swift
//  ContentViewUITests
//
//  Created by Will Boland on 9/11/22.
//

import XCTest

class ContentViewUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testContentView_Success() throws {
        let app = XCUIApplication()
        app.launch()

        let cells = app.tables.cells
        XCTAssertGreaterThan(cells.count, 0)
    }
}
