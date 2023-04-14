//
//  AddRecipeNew.swift
//  Kitchen
//
//  Created by RAJVI K CHAVDA on 12/04/23.
//

import SwiftUI

struct AddRecipeNew: View {
    @EnvironmentObject var recipsVM: RecipesViewModel
    
    @State private var name: String = ""
    @State private var selectedCategory: Category = Category.main
    @State private var description: String = ""
    @State private var ingridiants: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe  = false
    
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("Name")){
                    TextField("Recipe Name", text: $name)
                    
                }
                Section(header: Text("Category")){
                    Picker("Category", selection: $selectedCategory){
                        ForEach(Category.allCases) {
                            category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                    
                }
                Section(header: Text("Description")){
                    TextEditor( text: $description)
                    
                }
                Section(header: Text("Ingridiants")){
                    TextEditor( text: $ingridiants)
                    
                }
                Section(header: Text("Directions")){
                    TextEditor(text: $directions )
                    
                }
            }
            .toolbar(content:{
                ToolbarItem(placement: .navigationBarLeading){
                    Button{
                        dismiss()
                    } label: {
                        Label( "Cancle", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }
                }
                ToolbarItem{
                    NavigationLink(isActive: $navigateToRecipe){
                        RecipeDetail(recipe: recipsVM.recipes.sorted{$0.datePublished > $1.datePublished}[0])
                            .navigationBarBackButtonHidden(true)
                    }label: {
                        Button{
                            saveReacipe()
                            navigateToRecipe = true
                        } label: {
                            Label( "Done", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                        .disabled(name.isEmpty)
                    }
                    
                }
            })
            .navigationTitle("Add new recipe")
            .navigationBarTitleDisplayMode(.inline)
            
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeNew_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeNew()
            .environmentObject(RecipesViewModel())
    }
}


extension AddRecipeNew{
    private func saveReacipe(){
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublised  = dateFormatter.string(from: now)
        print(datePublised)
        let recipe  = Recipe(name: name, image: " ", description: description, ingridiants: ingridiants, direction: directions, category: selectedCategory.rawValue, datePublished: datePublised , url: " ")
        
        
        recipsVM.addRecipe(recipe: recipe)
    }
}
