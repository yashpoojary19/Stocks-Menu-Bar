//
//  ContentView.swift
//  Stocks Menu Bar
//
//  Created by Yash Poojary on 18/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm: StockListViewModel
    
    init(vm: StockListViewModel) {
        self._vm = StateObject(wrappedValue: vm)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Stocks").padding()
            
            List(vm.stocks, id: \.symbol) { stock in
                Text(stock.symbol)
            }.task {
                await vm.populateStocks()
            }
        }
        .frame(width: 300, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm: StockListViewModel())
    }
}
