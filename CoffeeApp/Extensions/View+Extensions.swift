//
//  View+Extensions.swift
//  CoffeeApp
//
//  Created by Arjun Saseendran on 21/05/26.
//

import Foundation
import SwiftUI

extension View {
    func centerHorizontally()-> some View{
        HStack{
            Spacer()
            self
            Spacer()
        }
    }
}

