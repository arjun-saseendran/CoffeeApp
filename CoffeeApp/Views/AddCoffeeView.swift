//
//  AddCoffeeView.swift
//  CoffeeApp
//
//  Created by Arjun Saseendran on 21/05/26.
//

import SwiftUI

struct AddCoffeeView: View {
    @State private var name: String = ""
    @State private var coffeeName: String = ""
    @State private var price: String = ""
    @State private var coffeeSize: CoffeeSize = .medium
    var body: some View {
        Form{
            TextField("Name", text:$name)
                .accessibilityIdentifier("name")
            TextField("CoffeeName", text: $coffeeName)
                .accessibilityIdentifier("coffeeName")
            TextField("Price", text: $price)
                .accessibilityIdentifier("price")
                    
            Picker("Select Size", selection: $coffeeSize){
                ForEach(CoffeeSize.allCases, id: \.rawValue){ size in
                    Text(size.rawValue).tag(size)
                }
                
            }.pickerStyle(.segmented)
            Button("Place Order"){
                
            }
            .accessibilityIdentifier("placeOrderButton")
            .centerHorizontally()
        }
    }
}

struct AddCoffeView_Preview: PreviewProvider {
    static var previews: some View {
        AddCoffeeView()
    }
}
