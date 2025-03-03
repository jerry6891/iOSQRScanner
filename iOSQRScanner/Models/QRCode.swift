//
//  QRCode.swift
//  iOSQRScanner
//
//  Created by Gerardo Lozano on 2/27/25.
//

import SwiftData
import SwiftUI

@Model
class QRCode: Identifiable {
    var id = UUID()
    var text: String

    init(text: String) {
        self.text = text
    }
}
