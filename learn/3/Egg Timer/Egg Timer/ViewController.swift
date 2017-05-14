//
//  ViewController.swift
//  Egg Timer
//
//  Created by Johnson Lai on 15/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var time = 210
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func resetBtnPressed(_ sender: Any) {
        time = 210
        timerLabel.text = String(time)
        timer.invalidate()

    }
    @IBAction func minusBtnPressed(_ sender: Any) {
        if time > 10 {
            time -= 10
            timerLabel.text = String(time)
        }
    }
    @IBAction func plusBtnPressed(_ sender: Any) {
        
        time += 10
        timerLabel.text = String(time)
    }
    @IBAction func pauseBtnPressed(_ sender: Any) {
        timer.invalidate()
    }
    @IBAction func playBtnPressed(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func decreaseTimer() {
        if time > 0 {
            time -= 1
            timerLabel.text = String(time)
    
        } else {
            timer.invalidate()
        }
    }


}

