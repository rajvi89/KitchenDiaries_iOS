//
//  HomeView.swift
//  Kitchen
//
//  Created by RAJVI K CHAVDA on 05/04/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipsVM: RecipesViewModel
    
    var body: some View {
        NavigationView {
            ScrollView{
                RecipeList(recipes: recipsVM.recipes)}
            
            .navigationTitle("My Recipes")
        }
        
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
