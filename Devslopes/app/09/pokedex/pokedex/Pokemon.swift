//
//  Pokemon.swift
//  pokedex
//
//  Created by Johnson Lai on 23/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import Foundation


class Pokemon {
    // id,identifier,species_id,height,weight,base_experience,order,is_default
    
    fileprivate var _name: String!
    fileprivate var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexId = pokedexId
    }
    
}
