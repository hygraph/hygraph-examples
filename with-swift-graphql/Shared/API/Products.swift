//
//  Products.swift
//  with-swift-graphql
//
//  Created by Craig Tweedy on 28/12/2021.
//

import Foundation
import SwiftGraphQL

class ProductsQuery {
    static var LIST_PRODUCTS: Selection<[Product], Objects.Query> {
        Selection.Query {
            return try $0.products(
                stage: .published,
                locales: [.en],
                selection: Selection.list(
                    Selection.Product {
                        Product(
                            id: try $0.id(),
                            name: try $0.name(),
                            description: try ($0.description() ?? ""),
                            price: try $0.price()
                        )
                    }
                )
            )
        }
    }
}
