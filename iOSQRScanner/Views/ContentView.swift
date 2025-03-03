//
//  ContentView.swift
//  iOSQRScanner
//
//  Created by Gerardo Lozano on 2/26/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @StateObject private var authViewModel = BiometricAuthViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                if authViewModel.isAuthenticated {
                    NavigationLink("Scan QR Code", destination: QRScannerView())
                        .padding()
                    NavigationLink("View QR History", destination: QRHistoryView())
                        .padding()
                } else {
                    BiometricLoginView()
                }
            }.navigationTitle("QR Scanner")
        }
    }
}

#Preview {
    ContentView()
}
