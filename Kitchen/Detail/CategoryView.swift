//
//  CategoryView.swift
//  Kitchen
//
//  Created by RAJVI K CHAVDA on 11/04/23.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipsVM: RecipesViewModel
    
    var category: Category
    
    var recipies: [Recipe]{
        return recipsVM.recipes.filter{$0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView{
            RecipeList(recipes: recipies
            )
        }
    }
}
struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category:  Category.breakfasts)
            .environmentObject(RecipesViewModel())
    }
}
