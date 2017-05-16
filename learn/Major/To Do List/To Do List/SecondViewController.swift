//
//  SecondViewController.swift
//  To Do List
//
//  Created by Johnson Lai on 16/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func addBtnPressed(_ sender: Any) {
        let itemObject = UserDefaults.standard.object(forKey: "items")
        
        var items :[String]
        
        if let tempItems = itemObject as? [String] {
            items = tempItems
            items.append(itemTextField.text!)
        } else {
            items = [itemTextField.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        // make field empty after adding
        itemTextField.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}

