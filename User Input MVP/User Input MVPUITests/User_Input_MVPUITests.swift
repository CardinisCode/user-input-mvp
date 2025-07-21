//
//  User_Input_MVPUITests.swift
//  User Input MVPUITests
//
//  Created by Andrea van Onselen on 19/07/2025.
//

import XCTest

final class User_Input_MVPUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    @MainActor
    func testLaunchPerformance() throws {
        // This measures how long it takes to launch your application.
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            XCUIApplication().launch()
        }
    }

    func testInitialScreenShowsInput() {
        let app = XCUIApplication()
        app.launch()
        XCTAssertTrue(app.textFields["Enter your name"].exists)
        XCTAssertTrue(app.buttons["Submit"].exists)
    }

    func testEmptySubmissionShowsValidation() {
        let app = XCUIApplication()
        app.launch()
        app.buttons["Submit"].tap()
        XCTAssertTrue(app.staticTexts["Please enter your name"].exists)
    }

    func testValidSubmissionShowsWelcome() {
        let app = XCUIApplication()
        app.launch()
        let nameField = app.textFields["Enter your name"]
        nameField.tap()
        nameField.typeText("Alice")
        app.buttons["Submit"].tap()
        XCTAssertTrue(app.staticTexts["Welcome, Alice!"].exists)
        XCTAssertTrue(app.staticTexts["Thank you for choosing HealthApp."].exists)
    }
}
