//
//  ContentViewUITests.swift
//  ContentViewUITests
//
//  Created by Will Boland on 9/11/22.
//

import XCTest

class ContentViewUITests: XCTestCase {
    let app = XCUIApplication()
    var startingCellCount = 0

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
        app.buttons["Add Entry"].tap()
        startingCellCount = app.cells.count
    }

    func testContentView() throws {
        let navigation = app.navigationBars.element
        let caloryEntryButton = app.buttons["caloryEntryButton"].firstMatch

        XCTAssert(navigation.exists)
        XCTAssert(caloryEntryButton.exists)
    }

    func testContentViewAddEntry() throws {
        app.buttons["Add Entry"].tap()
        XCTAssertGreaterThan(app.cells.count, startingCellCount)
    }

    func testContentViewDeleteEntry() throws {
        let cells = app.tables.cells
        let firstCell = cells.element(boundBy: 0)
        firstCell.swipeLeft(velocity: .slow)
        firstCell.buttons["Delete"].tap()

        XCTAssertLessThan(cells.count, startingCellCount)
    }
}
