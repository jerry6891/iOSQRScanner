//
//  BiometricLoginView.swift
//  iOSQRScanner
//
//  Created by Gerardo Lozano on 2/27/25.
//

import SwiftUI

struct BiometricLoginView: View {
    @StateObject private var authViewModel = BiometricAuthViewModel()

    var body: some View {
        VStack {
            Text("Login Required")
                .font(.largeTitle)
                .padding()

            Button(action: {
                authViewModel.authenticateUser()
            }) {
                Text("Authenticate with Face ID / Touch ID")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}
