//
//  NewRecipieView.swift
//  Kitchen
//
//  Created by RAJVI K CHAVDA on 05/04/23.
//

import SwiftUI

struct NewRecipieView: View {
    @State private var shoewAddRecipe = false
    var body: some View {
        NavigationView {
            Button("Add recipe manually"){
                shoewAddRecipe = true
                
            }
                .navigationTitle("New Recipies")
            
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $shoewAddRecipe){
            AddRecipeNew()
        }
    }
}

struct NewRecipieView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipieView()
    }
}
