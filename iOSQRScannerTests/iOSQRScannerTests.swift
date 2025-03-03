//
//  iOSQRScannerTests.swift
//  iOSQRScannerTests
//
//  Created by Gerardo Lozano on 2/26/25.
//

import XCTest
@testable import iOSQRScanner  // ✅ This imports the main app for testing

final class iOSQRScannerTests: XCTestCase {

    func testBiometricAuthSuccess() {
        let viewModel = BiometricAuthViewModel()  // ✅ Now it should work!
        viewModel.isAuthenticated = true
        XCTAssertTrue(viewModel.isAuthenticated, "User should be authenticated")
    }

    func testQRCodeStorage() {
        let viewModel = QRHistoryViewModel()
        let testQRCode = "https://example.com"

        viewModel.addCode(testQRCode)

        XCTAssertEqual(viewModel.scannedCodes.first?.text, testQRCode, "Stored QR code should match input")
    }
}

