//
//  UIApplication.swift
//  CryptoApp
//
//  Created by Viktoria Lobanova on 06.10.2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
