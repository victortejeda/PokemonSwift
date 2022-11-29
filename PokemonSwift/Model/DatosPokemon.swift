//
//  DatosPokemon.swift
//  PokemonSwift
//
//  Created by Victor Tejeda on 27/11/22.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    //let attack: Int
   // let defense: Int
  //  let description: String
    let name: String
    let imageUrl: String
    let type: String
   // let weight: Int
    //let height: Int
    
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "utico", imageUrl: "1", type: "poison"),
    .init(id: 1, name: "B", imageUrl: "1", type: "poison"),
    .init(id: 2, name: "Baur", imageUrl: "1", type: "poison"),
    .init(id: 3, name: "aur", imageUrl: "1", type: "poison"),
    .init(id: 4, name: "Bssr", imageUrl: "1", type: "poison"),
    .init(id: 5, name: "Bulbasaur", imageUrl: "1", type: "poison"),
]
