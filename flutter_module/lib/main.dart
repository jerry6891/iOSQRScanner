import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QRScanner Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const MethodChannel _channel = MethodChannel('qrscanner/native');

  Future<void> _openSwiftUIQRScanner() async {
    try {
      await _channel.invokeMethod('openSwiftUIQRScanner');
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print("❌ Error opening SwiftUI QR Scanner: ${e.message}");
      }
    }
  }

  Future<void> _openSwiftUIBiometricAuth() async {
    try {
      await _channel.invokeMethod('openSwiftUIBiometricAuth');
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print("❌ Error opening SwiftUI Biometric Auth: ${e.message}");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter QR Scanner")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _openSwiftUIQRScanner,
              child: const Text("Open QR Scanner (SwiftUI)"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _openSwiftUIBiometricAuth,
              child: const Text("Open Biometric Login (SwiftUI)"),
            ),
          ],
        ),
      ),
    );
  }
}
