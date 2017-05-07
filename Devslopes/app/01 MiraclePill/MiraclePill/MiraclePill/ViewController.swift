//
//  ViewController.swift
//  MiraclePill
//
//  Created by Johnson Lai on 07/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var buyNowBtn: UIButton!
    
    let states = ["Alor Gajah", "Ayer Keroh", "Bukit Baru", "Bukit Beruang", "Melaka Raya", "Paya Ikan", "Tebong"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Make background purple
        // self.view.backgroundColor = UIColor.purple
        
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }

    @IBAction func buyNowBtnPressed(_ sender: Any) {
    }
}

