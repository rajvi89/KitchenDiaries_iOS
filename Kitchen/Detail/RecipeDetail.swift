//
//  RecipeDetail.swift
//  Kitchen
//
//  Created by RAJVI K CHAVDA on 11/04/23.
//

import SwiftUI

struct RecipeDetail: View {
    var recipe : Recipe
    var body: some View {
        ScrollView{
            
            AsyncImage(url: URL(string: recipe.image)) {
                image in image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
               Image(systemName: "Photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing:30){
                Text(recipe.name)
                    .font(.largeTitle)
                
                    .bold()
                    .multilineTextAlignment(.center)
                
                
                VStack(alignment: .leading, spacing: 30){
                    
                    if !recipe.description.isEmpty{
                        Text(recipe.description)
                    }
                    if !recipe.ingridiants.isEmpty{
                        VStack(alignment: .leading, spacing: 20)
                        {
                            Text(recipe.ingridiants)
                        }}
                        
                    
                    if !recipe.direction.isEmpty{
                        VStack(alignment: .leading, spacing: 20)
                        {
                            Text(recipe.direction)
                        }}
                    
                   
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
        
    }

}

struct RecipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetail(recipe: Recipe.all[0])
    }
}
