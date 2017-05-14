//
//  ViewController.swift
//  Cat Years
//
//  Created by Johnson Lai on 14/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var ageLabel: UILabel!
    @IBAction func submitBtnPressed(_ sender: Any) {
        let ageInCatYears = Int(ageTextField.text!)! * 7
        ageLabel.text = "\(ageInCatYears)"
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

