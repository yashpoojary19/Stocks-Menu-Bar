//
//  Double+Extensions.swift
//  Stocks Menu Bar
//
//  Created by Yash Poojary on 19/05/22.
//

import Foundation

extension Double {
    func formatAsCurrency() -> String {
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 2
        return formatter.string(from: NSNumber(value: self)) ?? "NA"
    }
}
