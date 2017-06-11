//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Johnson Lai on 11/06/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name
    }


}
