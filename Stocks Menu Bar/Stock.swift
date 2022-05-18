//
//  Stock.swift
//  Stocks Menu Bar
//
//  Created by Yash Poojary on 18/05/22.
//

import Foundation


struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: Double
}
