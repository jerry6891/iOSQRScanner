//
//  iOSQRScannerUITests.swift
//  iOSQRScannerUITests
//
//  Created by Gerardo Lozano on 2/26/25.
//

import XCTest

final class iOSQRScannerUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testLoginButtonExists() {
        let loginButton = app.buttons["Authenticate with Face ID / Touch ID"]
        XCTAssertTrue(loginButton.exists, "Login button should be visible")
    }

    func testNavigationToScanner() {
        app.buttons["Authenticate with Face ID / Touch ID"].tap()
        let scanButton = app.buttons["Scan QR Code"]
        XCTAssertTrue(scanButton.waitForExistence(timeout: 5), "Scan QR Code button should appear after login")
    }
}

/* final class iOSQRScannerUITests: XCTestCase {

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
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
*/
