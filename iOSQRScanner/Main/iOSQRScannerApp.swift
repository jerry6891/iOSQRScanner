//
//  iOSQRScannerApp.swift
//  iOSQRScanner
//
//  Created by Gerardo Lozano on 2/26/25.
//

import SwiftUI
import SwiftData

@main
struct iOSQRScannerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().modelContainer(for: QRCode.self)
        }
    }
}
