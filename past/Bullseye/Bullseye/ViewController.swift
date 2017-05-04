//
//  ViewController.swift
//  Bullseye
//
//  Created by Johnson Lai on 02/04/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // When hit me button is pressed
    @IBAction func showAlert(_ sender: Any) {
        // This created the POP UP TITLE and DETAILS
        let alert  =  UIAlertController(title: "Hello World", message: "This is a pop up alert", preferredStyle: .alert)
        // Button to handle the POP UP ALERT (to close the alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        // added action to the alert
        alert.addAction(action)
        // present out
        present(alert, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

