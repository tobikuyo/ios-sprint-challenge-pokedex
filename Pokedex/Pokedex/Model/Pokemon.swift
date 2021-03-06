//
//  Pokemon.swift
//  Pokedex
//
//  Created by Tobi Kuyoro on 17/01/2020.
//  Copyright © 2020 Tobi Kuyoro. All rights reserved.
//

import Foundation

struct PokemonResults: Decodable {
    let results: [Pokemon]
}

struct Pokemon: Decodable, Equatable {
    let name: String
    let id: Int
    let abilities: [PokemonAbility]
    let types: [PokemonType]
    var sprites: PokemonSprites
    
    static func == (lhs: Pokemon, rhs: Pokemon) -> Bool {
        return lhs.name == rhs.name
    }
}

struct PokemonAbility: Decodable {
    let ability: NamedAbility
}

struct NamedAbility: Decodable {
    let name: String
}

struct PokemonType: Decodable {
    let type: TypeDetail
}

struct TypeDetail: Decodable {
    let name: String
}

struct PokemonSprites: Codable {
    var picture: URL
    
    enum CodingKeys: String, CodingKey {
        case picture = "front_default"
    }
}
