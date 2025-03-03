//
//  QRScannerViewModel.swift
//  iOSQRScanner
//
//  Created by Jerry Lozano on 2/28/25.
//

import SwiftUI
import SwiftData

@Observable
class QRScannerViewModel {
    var scannedCode: String?
    private var modelContext: ModelContext

    init(modelContext: ModelContext) {
        self.modelContext = modelContext
    }

    func handleScannedCode(_ code: String) {
        DispatchQueue.main.async {
            self.scannedCode = code
            self.saveScannedCode(code)
        }
    }

    private func saveScannedCode(_ code: String) {
        let newQRCode = QRCode(text: code)
        modelContext.insert(newQRCode)

        do {
            try modelContext.save()
            print("✅ QR Code saved successfully: \(code)")
        } catch {
            print("❌ Error saving QR Code: \(error.localizedDescription)")
        }
    }
}
