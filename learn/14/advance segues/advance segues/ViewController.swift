//
//  ViewController.swift
//  advance segues
//
//  Created by Johnson Lai on 17/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

// Method 1: Global variable
// let globalVariable = "test"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let secondVC = segue.destinationViewController as! SecondVC
            
            secondVC.username = "test at first vc"
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

