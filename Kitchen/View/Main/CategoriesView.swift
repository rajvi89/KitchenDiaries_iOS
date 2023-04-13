//
//  CategoriesView.swift
//  Kitchen
//
//  Created by RAJVI K CHAVDA on 05/04/23.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Category.allCases){ category in
                    NavigationLink {
                        
                        ScrollView{
                            RecipeList(recipes: Recipe.all.filter{$0.category == category.rawValue})
                        }
                    } label: {
                        Text(category.rawValue + "s")
                    }
                   
                    
                }
            }
            
            .navigationTitle("Categopries")
            
        }
        .navigationViewStyle(.stack)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
