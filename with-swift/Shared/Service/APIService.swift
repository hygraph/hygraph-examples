//
//  APIService.swift
//  with-swift
//
//  Created by Craig Tweedy on 28/12/2021.
//

import Foundation

class APIService {
    let api: GraphQLAPI = GraphQLAPI()
    
    func listProducts() async -> [Product] {
        return (
            try? await self.api.performOperation(GraphQLOperation.LIST_PRODUCTS)
        ) ?? []
    }
}
