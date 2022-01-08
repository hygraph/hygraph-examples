//
//  GraphQL.swift
//  with-swift
//
//  Created by Craig Tweedy on 28/12/2021.
//

import Foundation

struct GraphQLOperation<Output: Decodable>: Encodable {
    var operationString: String
    
    private let url = URL(string: "https://api-eu-central-1.graphcms.com/v2/ck8sn5tnf01gc01z89dbc7s0o/master")!
    
    enum CodingKeys: String, CodingKey {
        case variables
        case query
    }
    
    init(_ operationString: String) {
        self.operationString = operationString
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(operationString, forKey: .query)
    }
    
    func getURLRequest() throws -> URLRequest {
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try JSONEncoder().encode(self)
    
        return request
    }
}

class GraphQLAPI {
    
    private func performCall(urlRequest: URLRequest) async throws -> (Data, URLResponse) {
        try await withCheckedThrowingContinuation { continuation in
            let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
                guard let data = data, let response = response else {
                    let error = error ?? URLError(.badServerResponse)
                    return continuation.resume(throwing: error)
                }

                continuation.resume(returning: (data, response))
            }

            task.resume()
        }
    }
    
    func performOperation<Output>(_ operation: GraphQLOperation<Output>) async throws -> Output {
        let request: URLRequest
        
        request = try operation.getURLRequest()

        let (data, _) = try await self.performCall(urlRequest: request)
        
        let result = try JSONDecoder().decode(GraphQLResult<Output>.self, from: data)
        guard let object = result.object else {
            print(result.errorMessages.joined(separator: "\n"))
            throw NSError(domain: "Error", code: 1)
        }
        
        return object;
    }
}
