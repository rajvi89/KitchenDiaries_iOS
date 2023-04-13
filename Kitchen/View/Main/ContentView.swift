//
//  ContentView.swift
//  Kitchen
//
//  Created by RAJVI K CHAVDA on 05/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RecipesViewModel())
    }
}
