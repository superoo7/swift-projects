//
//  ViewController.swift
//  Whats my number
//
//  Created by Johnson Lai on 16/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!
    
    @IBAction func saveNumberPressed(_ sender: Any) {
        UserDefaults.standard.set(numberField.text, forKey: "number")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
        
        if let number = numberObject as? String {
            numberField.text = number
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

