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
        startingCellCount = app.cells.count
    }

    func testContentView() throws {
        let navigation = app.navigationBars.element
        XCTAssert(navigation.exists)
    }

    func testContentViewAddEntry() throws {
        app.buttons["Add Entry"].tap()
        XCTAssertGreaterThan(app.cells.count, startingCellCount)

        let caloryEntryButton = app.buttons["caloryEntryButton"]
        XCTAssert(caloryEntryButton.exists)
    }

    func testContentViewDeleteEntry() throws {
        app.buttons["Add Entry"].tap()

        let cells = app.tables.cells
        let firstCell = cells.element(boundBy: 0)
        firstCell.swipeLeft()
        firstCell.buttons["Delete"].tap()

        XCTAssertEqual(cells.count, startingCellCount)
    }
}
