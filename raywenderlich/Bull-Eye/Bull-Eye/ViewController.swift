//
//  ViewController.swift
//  Bull-Eye
//
//  Created by Johnson Lai on 26/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var valueLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func sliderWhenMoving(_ slider: UISlider) {
        valueLabel.text = String(slider.value)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        print("\(slider.value)")
    }
    
    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Hello world", message: "This is my app", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        let action2 = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        
        alert.addAction(action1)
        alert.addAction(action2)
        
        present(alert, animated: true, completion: nil)
    }


}

