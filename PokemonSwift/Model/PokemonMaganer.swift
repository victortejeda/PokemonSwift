//
//  PokemonMaganer.swift
//  PokemonSwift
//
//  Created by Victor Tejeda on 27/11/22.
//

import Swift
import Foundation

class PokemonManager: ObservableObject {
    @Published var pokemon = [Pokemon]()
    let baseUrl = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    init() {
        fetchPokemon()
    }
    
    func fetchPokemon() {
        guard let url = URL(string: baseUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { datos, respuesta, error in
//            guard let datos = datos  else { return }
            guard let datos = datos?.parseData(quitarString: "null,") else { return }
            guard let pokemon = try? JSONDecoder().decode([Pokemon].self, from: datos) else { return }
                    
                    DispatchQueue.main.async {
                        self.pokemon = pokemon
                    }
        }.resume()
    }
}

extension Data {
    func parseData(quitarString palabra: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parseDataString = dataAsString?.replacingOccurrences(of: palabra, with: "")
        guard let data = parseDataString?.data(using: .utf8) else { return nil }
        return data
    }
}
