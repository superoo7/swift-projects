//
//  ConversionViewController.swift
//  WordTrotter
//
//  Created by Johnson Lai on 20/03/2017.
//  Copyright © 2017 superoo7.com. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
    @IBAction func fahrenheitFieldEditingChanged(textField: UITextField)
    {
        if let text = textField.text, !text.isEmpty {
            celciusLabel.text = text
        } else {
            celciusLabel.text = "???"
        }
    }

}
