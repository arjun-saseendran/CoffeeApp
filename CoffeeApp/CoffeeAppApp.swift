//
//  CoffeeAppApp.swift
//  CoffeeApp
//
//  Created by Arjun Saseendran on 18/05/26.
//

import SwiftUI

@main
struct CoffeeAppApp: App {
    
    @StateObject private var model: CoffeeModel
    
    init(){
        let webService = WebService()
        _model = StateObject(wrappedValue: CoffeeModel(webService: webService))
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
