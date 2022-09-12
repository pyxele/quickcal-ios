//
//  ContentViewUITests.swift
//  ContentViewUITests
//
//  Created by Will Boland on 9/11/22.
//

import XCTest

class ContentViewUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testContentView() throws {
        let navigation = app.navigationBars.element
        app.buttons["Add Entry"].tap()

        XCTAssert(navigation.exists)
        XCTAssertGreaterThan(app.cells.count, 0)
    }

    func testContentViewAddEntry() throws {
        app.buttons["Add Entry"].tap()

        let navBar = app.navigationBars.element
        XCTAssert(navBar.exists)

        let caloryEntryButton = app.buttons["caloryEntryButton"]
        XCTAssert(caloryEntryButton.exists)
    }
}
