//
//  StockListViewModel.swift
//  Stocks Menu Bar
//
//  Created by Yash Poojary on 18/05/22.
//

import Foundation

@MainActor
class StockListViewModel: ObservableObject {
    
    @Published var stocks: [StockViewModel] = []
    
    func populateStocks() async {
        
        do {
            let stocks = try await Webservice().getStocks(url: Constants.Urls.latestStock!)
            self.stocks = stocks.map(StockViewModel.init)
            
            
        } catch {
            print(error)
        }
        
        
    }
}

struct StockViewModel {
    private var stock: Stock
    
    init(stock: Stock) {
        self.stock = stock
    }
    
    var symbol: String {
        stock.symbol
    }
    
    var price: Double {
        stock.price
    }
    
    var description: String {
        stock.description
    }
}
