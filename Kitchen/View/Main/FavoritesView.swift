//
//  FavoritesView.swift
//  Kitchen
//
//  Created by RAJVI K CHAVDA on 05/04/23.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("Favourites")
                .navigationTitle("Favorites")
            
        }
        .navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
