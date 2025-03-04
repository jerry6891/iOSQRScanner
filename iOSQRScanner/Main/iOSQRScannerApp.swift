//
//  iOSQRScannerApp.swift
//  iOSQRScanner
//
//  Created by Gerardo Lozano on 2/26/25.
//

import SwiftUI
import SwiftData
import Flutter

@main
struct iOSQRScannerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: QRCode.self) // Keeps SwiftData functionality
                .onAppear {
                    setupFlutterChannel()
                }
        }
    }

    private func setupFlutterChannel() {
        guard let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = scene.windows.first,
              let controller = window.rootViewController as? FlutterViewController else {
            print("❌ Could not get rootViewController")
            return
        }

        let channel = FlutterMethodChannel(name: "qrscanner/native", binaryMessenger: controller.binaryMessenger)

        channel.setMethodCallHandler { (call, result) in
            if call.method == "openSwiftUIQRScanner" {
                DispatchQueue.main.async {
                    window.rootViewController = UIHostingController(rootView: QRScannerView())
                }
            } else if call.method == "openSwiftUIBiometricAuth" {
                DispatchQueue.main.async {
                    window.rootViewController = UIHostingController(rootView: BiometricLoginView())
                }
            } else {
                result(FlutterMethodNotImplemented)
            }
        }
    }
}
