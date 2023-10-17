//
//  String.swift
//  CryptoApp
//
//  Created by Viktoria Lobanova on 11.10.2023.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
