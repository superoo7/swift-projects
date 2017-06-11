//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Johnson Lai on 11/06/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!

    @IBOutlet weak var nameLbl: UILabel!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        //nameLbl.text = pokemon.name
    }


}
