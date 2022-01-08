//
//  Currency.swift
//  with-swift
//
//  Created by Craig Tweedy on 28/12/2021.
//

import Foundation

extension Int {
    func asCurrency() -> String {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current
        
        return currencyFormatter.string(from: NSNumber(value: self / 100)) ?? "N/A"
    }
}
