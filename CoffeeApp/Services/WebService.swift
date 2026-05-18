//
//  WebService.swift
//  CoffeeApp
//
//  Created by Arjun Saseendran on 18/05/26.
//

import Foundation

enum NetworkError: Error {
    case badRequest
    case decodingError
    case badUrl
}

class WebService {
    func getOrders() async throws -> [Order]{
        guard let url = URL(string: "http://localhost:3000/api/order") else {
            throw NetworkError.badUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from:url)
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.badRequest
        }
        
        guard let orders = try? JSONDecoder().decode([Order].self, from: data) else {
            throw NetworkError.decodingError
        }
        return orders
    }
}
