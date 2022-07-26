//
//  API.swift
//  with-swift-graphql
//
//  Created by Craig Tweedy on 29/12/2021.
//

import Foundation
import SwiftGraphQL

class GraphQLAPI {

    func performOperation<T>(query: Selection.Query<T>) async throws -> T {
        try await withCheckedThrowingContinuation { continuation in
            SwiftGraphQL.send(query, to: "https://api-eu-central-1.hygraph.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master") { result in
                if let data = try? result.get() {
                    continuation.resume(returning: data.data)
                }
            }
        }
    }

}
