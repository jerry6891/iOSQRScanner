//
//  BiometricAuthViewModel.swift
//  iOSQRScanner
//
//  Created by Gerardo Lozano on 2/27/25.
//

import LocalAuthentication
import SwiftUI

class BiometricAuthViewModel: ObservableObject {
    @Published var isAuthenticated = false
    
    func authenticateUser() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            context.evaluatePolicy(
                .deviceOwnerAuthenticationWithBiometrics,
                localizedReason: "Access QR Scanner"
            ) { success, error in
                DispatchQueue.main.async {
                    self.isAuthenticated = success
                }
            }
        }
    }
}
