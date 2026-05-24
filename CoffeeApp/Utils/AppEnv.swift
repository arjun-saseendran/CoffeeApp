//
//  AppEnv.swift
//  CoffeeApp
//
//  Created by Arjun Saseendran on 20/05/26.
//

import Foundation

enum Endpoints {
    case allOrders
    case placeOrder
    var path: String {
        switch self {
        case .allOrders:
            return "order"
        case .placeOrder:
            return "order"
        
        }
    }
}

struct Config {
    lazy var environment: AppEnv = {
        guard let env = ProcessInfo.processInfo.environment["ENV"] else {
            return AppEnv.dev
        }
        
        if env == "TEST" {
            return AppEnv.test
        }
        
        return AppEnv.dev
    }()
}


enum AppEnv: String {
    case dev
    case test
    
    var baseURL: URL {
        switch self  {
        case .dev:
            return URL(string: "http://localhost:3000/api")!
        case .test:
            return URL(string: "http://localhost:3000/api")!
        }
    }
}

