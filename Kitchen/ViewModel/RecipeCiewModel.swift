//
//  RecipeCiewModel.swift
//  Kitchen
//
//  Created by RAJVI K CHAVDA on 12/04/23.
//

import Foundation

class RecipesViewModel: ObservableObject{
    @Published  private(set) var recipes: [Recipe] = []
    
    init(){
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
    
}
