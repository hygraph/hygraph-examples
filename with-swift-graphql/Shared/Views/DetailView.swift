//
//  DetailView.swift
//  with-swift-graphql
//
//  Created by Craig Tweedy on 28/12/2021.
//

import SwiftUI

struct DetailView: View {
    var product: Product
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(product.price.asCurrency()).font(.subheadline)
                .padding(.bottom, 10)
            Text(product.description)
            Spacer()
        }
        .padding()
        .navigationTitle(product.name)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(
            product: Product(
                name: "Product Title", description: "", price: 1
            )
        )
    }
}
