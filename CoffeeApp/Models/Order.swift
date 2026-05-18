//
//  Order.swift
//  CoffeeApp
//
//  Created by Arjun Saseendran on 18/05/26.
//

import Foundation

enum CoffeeSize: String, Codable, CaseIterable {
    case small = "Small"
    case medium = "Medium"
    case large = "Large"
}

struct Order: Codable, Identifiable, Hashable{
    var id: Int?
    var name: String
    var coffeName: String
    var total: Double
    var size: CoffeeSize
}
