# iOSQRScanner

## 🚀 iOS QR Scanner App (SwiftUI + SwiftData + Flutter Modules)
A fully functional iOS application that allows users to scan QR codes using the device camera, authenticate using Face ID/Touch ID, and store scanned QR codes locally using SwiftData.

---

## 📌 Features
- ✅ **QR Code Scanner** (Uses **AVFoundation** for native iOS scanning performance)
- ✅ **Biometric Authentication** (Face ID / Touch ID with fallback PIN support)
- ✅ **QR History Storage** (Persist scanned QR codes using **SwiftData**)
- ✅ **Flutter Module Integration** (Supports future Flutter expansion)
- ✅ **Fastlane for CI/CD** (Automates builds & deployment)
- ✅ **Full Unit & UI Testing** (Ensures stability & performance)

---

## 📂 Project Structure
iOSQRScanner
│── Main/
│    ├── iOSQRScannerApp.swift    # App entry point
│── Views/
│    ├── ContentView.swift        # Main Navigation
│    ├── BiometricLoginView.swift # Face ID / Touch ID Login
│    ├── QRScannerView.swift      # QR Scanner Camera
│    ├── QRHistoryView.swift      # QR Code History
│── ViewModels/
│    ├── BiometricAuthViewModel.swift  # Handles Biometric Login Logic
│    ├── QRScannerViewModel.swift      # Manages QR Scanning Logic
│    ├── QRHistoryViewModel.swift      # Manages QR Storage Logic
│── Models/
│    ├── QRCode.swift              # SwiftData Model for QR Code Storage
│── Resources/
│    ├── Assets.xcassets           # Icons & Images
│── flutter_module/                # Flutter Module (Future Expansion)
│── Tests/
│── iOSQRScannerTests/             # Unit Tests
│── iOSQRScannerUITests/           # UI Tests

---

## 🔧 Installation & Setup
### **1️⃣ Clone the Repository**
git clone https://github.com/YOUR_GITHUB_USERNAME/iOSQRScanner.git
cd iOSQRScanner

### **2️⃣ Install Dependencies**
cd flutter_module/.ios
pod install --repo-update

### **3️⃣ Open the Project in Xcode**
open iOSQRScanner.xcworkspace

### **4️⃣ Run the App on a Simulator**
flutter run

### **5️⃣ Run on a Physical iOS Device**
flutter run --release

---

## ✅ Running Tests
### **Run Unit Tests**
xcodebuild test -scheme iOSQRScannerTests -destination 'platform=iOS Simulator,name=iPhone 15'

### **Run UI Tests**
xcodebuild test -scheme iOSQRScannerUITests -destination 'platform=iOS Simulator,name=iPhone 15'

---

## 🎯 Final Notes
✅ **This project is fully functional, modular, and ready for deployment.**
✅ **Flutter module integration allows for future expansions without breaking the iOS native code.**
✅ **Fastlane is set up for CI/CD automation.**

