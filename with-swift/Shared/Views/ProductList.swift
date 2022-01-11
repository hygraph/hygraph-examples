//
//  ProductList.swift
//  with-swift
//
//  Created by Craig Tweedy on 28/12/2021.
//

import SwiftUI


struct ProductList: View {
    var products: [Product] = []
    @State var selectedProduct: Product? = nil
    
    var body: some View {
        List(products, id: \.id) { product in
            NavigationLink {
                    DetailView(product: product)
            } label: {
                Text(product.name)
            }
        }
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductList(products: [
            Product(name: "Product", description: "", price: 1)
        ])
    }
}

