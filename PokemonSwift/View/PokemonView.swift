//
//  PokemonView.swift
//  PokemonSwift
//
//  Created by Victor Tejeda on 27/11/22.
//

import SwiftUI

struct PokemonView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())] //Para hacer dos tablas
    @StateObject var viewModel = PokemonManager()
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 15){
                    ForEach(viewModel.pokemon) { pokemon in
                        PokemonCell(pokemon: pokemon)
                    }
                }
            }
            .navigationTitle("Pokemon")
        }
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView()
    }
}
