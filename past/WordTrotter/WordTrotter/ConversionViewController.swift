//
//  ConversionViewController.swift
//  WordTrotter
//
//  Created by Johnson Lai on 20/03/2017.
//  Copyright © 2017 superoo7.com. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateCelsiusLabel()
    }
    
    @IBOutlet weak var celsiusLabel: UILabel!
    var fahrenheitValue: Measurement<UnitTemperature>? {
        didSet {
            updateCelsiusLabel()
        }
    }
    var celsiusValue: Measurement<UnitTemperature>? {
        if let fahrenheitValue = fahrenheitValue {
            return fahrenheitValue.converted(to: .celsius)
        } else {
            return nil
        }
    }
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
    
    @IBAction func fahrenheitFieldEditingChanged(textField: UITextField)
    {
        if let text = textField.text, let value = Double(text) {
            fahrenheitValue = Measurement(value: value, unit: .fahrenheit)
        } else {
            fahrenheitValue = nil
        }
    }
    func updateCelsiusLabel() {
        if let celsiusValue = celsiusValue {
            celsiusLabel.text = numberFormatter.string(from: NSNumber(value: celsiusValue.value))
        } else {
            celsiusLabel.text = "???"
        }
    }
    
    
    // Number formatter
    let numberFormatter: NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        
        return nf
    }()
    
    
    
    func textField(_ textField: UITextField,
                      shouldChangeCharactersIn range: NSRange,
                      replacementString string: String) -> Bool {
        
        print("Current text: \(textField.text)")
        print("Replacement text: \(string)")
        
        return true
    }
    
}
