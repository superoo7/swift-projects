//
//  ViewController.swift
//  Menu Bar
//
//  Created by Johnson Lai on 14/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    
    @IBAction func cameraBtnPressed(_ sender: Any) {
        timer.invalidate()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func processTimer() {
        
    }

}

