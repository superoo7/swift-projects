//
//  ViewController.swift
//  PillTrader
//
//  Created by Johnson Lai on 16/03/2017.
//  Copyright © 2017 superoo7.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var fullNameFill: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var addressFill: UITextField!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityFill: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    // "Choose your state..." button
    @IBOutlet weak var statePickerBtn: UIButton!
    // Picker
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var countryFill: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipFill: UITextField!
    
    @IBOutlet weak var buyButton: UIButton!
    
    @IBOutlet weak var successImg: UIImageView!
    
    let states = ["Melaka","Johor","Singapore","Sabah"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // self.view.backgroundColor = UIColor.purple
        picker.dataSource = self
        picker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Choose your state... button pressed
    @IBAction func stateBtnPressed(_ sender: Any) {
        // close element below choose your state... button
        countryLabel.isHidden = true
        countryFill.isHidden = true
        zipLabel.isHidden = true
        zipFill.isHidden = true
        buyButton.isHidden = true
        
        
        // show the picker
        picker.isHidden = false
        
    }
    
    // Buy Now button pressed
    @IBAction func buyBtnPressed(_ sender: Any) {
        // Hide all
        fullNameLabel.isHidden = true
        fullNameFill.isHidden = true
        addressLabel.isHidden = true
        addressFill.isHidden = true
        cityLabel.isHidden = true
        cityFill.isHidden = true
        stateLabel.isHidden = true
        statePickerBtn.isHidden = true
        countryLabel.isHidden = true
        countryFill.isHidden = true
        zipLabel.isHidden = true
        zipFill.isHidden = true
        buyButton.isHidden = true
        // show success img
        successImg.isHidden = false
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    // from picker to btn
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        // make picker invi
        picker.isHidden = true
        // make the btm element back
        countryLabel.isHidden = false
        countryFill.isHidden = false
        zipLabel.isHidden = false
        zipFill.isHidden = false
        buyButton.isHidden = false
        
        
    }
    
    
}

