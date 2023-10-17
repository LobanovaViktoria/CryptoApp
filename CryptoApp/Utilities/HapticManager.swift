//
//  HapticManager.swift
//  CryptoApp
//
//  Created by Viktoria Lobanova on 10.10.2023.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    static func notification(type : UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
