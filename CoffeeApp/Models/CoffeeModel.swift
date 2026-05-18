//
//  CoffeeModel.swift
//  CoffeeApp
//
//  Created by Arjun Saseendran on 18/05/26.
//

import Foundation
import Combine

@MainActor
class CoffeeModel: ObservableObject {
    
    let webService: WebService
    
    @Published private(set) var orders: [Order] = []
    
    init(webService: WebService){
        self.webService = webService
    }
    
    func populateOrders() async throws {
        orders = try await webService.getOrders()
    }
    
}
