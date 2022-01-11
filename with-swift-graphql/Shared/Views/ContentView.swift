//
//  ContentView.swift
//  with-swift-graphql
//
//  Created by Craig Tweedy on 28/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var products: [Product] = []
    let apiService: APIService = APIService()
    
    func loadProducts() async {
        self.products = await self.apiService.listProducts()
    }
    
    var body: some View {
        ProductList(
            products: self.products
        )
        .navigationTitle("Products")
        .onAppear {
            Task.init {
                await self.loadProducts()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(products: [
            Product(name: "Product 1", description: "", price: 1),
            Product(name: "Product 2", description: "", price: 2),
            Product(name: "Product 3", description: "", price: 3),
            Product(name: "Product 4", description: "", price: 4),
            Product(name: "Product 5", description: "", price: 5),
        ])
    }
}
