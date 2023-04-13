//
//  KitchenApp.swift
//  Kitchen
//
//  Created by RAJVI K CHAVDA on 05/04/23.
//

import SwiftUI

@main
struct KitchenApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
