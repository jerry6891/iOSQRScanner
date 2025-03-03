//
//  QRHistoryViewModel.swift
//  iOSQRScanner
//
//  Created by Jerry Lozano on 2/28/25.
//

import SwiftData
import Foundation

@Observable
class QRHistoryViewModel {
    var scannedCodes: [QRCode] = []

    func addCode(_ text: String) {
        let newCode = QRCode(text: text)
        scannedCodes.append(newCode)
    }
}
