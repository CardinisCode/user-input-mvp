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

    func testNameInputAndWelcomeFlow() {
        let app = XCUIApplication()
        app.launch()

        // 1. Check that the text field and submit button exist
        let nameField = app.textFields["Enter your name"]
        XCTAssertTrue(nameField.exists, "The name input field should exist.")

        let submitButton = app.buttons["Submit"]
        XCTAssertTrue(submitButton.exists, "The submit button should exist.")

        // 2. Try submitting with an empty name
        submitButton.tap()
        let validationText = app.staticTexts["Please enter your name"]
        XCTAssertTrue(validationText.exists, "Validation message should appear for empty input.")

        // 3. Enter a valid name and submit
        nameField.tap()
        nameField.typeText("Alice")
        submitButton.tap()

        // 4. Check for the welcome message
        let welcomeText = app.staticTexts["Welcome, Alice!"]
        XCTAssertTrue(welcomeText.exists, "Welcome message should appear with the entered name.")

        let thankYouText = app.staticTexts["Thank you for choosing HealthApp."]
        XCTAssertTrue(thankYouText.exists, "Thank you message should appear with the app name.")
    }
}
