//
//  QRHistoryView.swift
//  iOSQRScanner
//
//  Created by Gerardo Lozano on 2/27/25.
//

import SwiftUI
import SwiftData

struct QRHistoryView: View {
    @Query var scannedCodes: [QRCode]

    var body: some View {
        List(scannedCodes) { code in
            Text(code.text)
        }
        .navigationTitle("QR History")
    }
}
