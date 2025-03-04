//
//  AppDelegate.swift
//  iOSQRScanner
//
//  Created by Jerry Lozano on 3/3/25.
//

import UIKit
import Flutter

class AppDelegate: NSObject, UIApplicationDelegate {
    var flutterEngine: FlutterEngine?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        // Initialize Flutter Engine
        flutterEngine = FlutterEngine(name: "qrscanner_engine")
        flutterEngine?.run()
        
        return true
    }
}
