//
//  TabBar.swift
//  Kitchen
//
//  Created by RAJVI K CHAVDA on 05/04/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            CategoriesView()
                .tabItem{
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            AddRecipeNew()
                .tabItem{
                    Label("New Recipies", systemImage: "plus")
                }
            FavoritesView()
                .tabItem{
                    Label("Favourites", systemImage: "heart")
                }
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(RecipesViewModel())
    }
}
