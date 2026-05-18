//
//  NumberFormatter+Extensions.swift
//  CoffeeApp
//
//  Created by Arjun Saseendran on 18/05/26.
//

import Foundation

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }
}
