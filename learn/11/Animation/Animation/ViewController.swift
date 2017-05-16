//
//  ViewController.swift
//  Animation
//
//  Created by Johnson Lai on 16/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func fadeIn(_ sender: Any) {
        image.alpha = 0
        
        UIView.animate(withDuration: 1, animations: {
            self.image.alpha = 1
        })
    }
    @IBAction func slideIn(_ sender: Any) {
        image.center = CGPoint(x: image.center.x - 600, y: image.center.y)
        UIView.animate(withDuration: 2, animations: {
            self.image.center = CGPoint(x: self.image.center.x + 600, y: self.image.center.y)
        })
    }
    @IBAction func grow(_ sender: Any) {
        
        image.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        
        UIView.animate(withDuration: 1, animations: {
            self.image.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        })
        
    }
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var image: UIImageView!
    
    var counter = 1
    var isAnimating = false
    var timer = Timer()
    
    func animate() {
        image.image = UIImage(named: "frame_\(counter)_delay-0.07s.gif")
        counter += 1
        
        if counter == 15 {
            counter = 0
        }
    }
    
    @IBAction func BtnPressed(_ sender: Any) {
        
        if isAnimating {
            timer.invalidate()
            button.setTitle("Start Animation", for: [])
            isAnimating = false
            button.backgroundColor = UIColor(red: 3/255, green: 194/255, blue: 163/255, alpha: 1.0)
        } else {
        
        timer = Timer.scheduledTimer(timeInterval: 0.07, target: self, selector: #selector(ViewController.animate), userInfo: nil, repeats: true)
        
        button.setTitle("Stop Animation", for: [])
        button.backgroundColor = UIColor(red: 250/255, green: 113/255, blue: 104/255, alpha: 1.0)
        isAnimating = true
        }
        
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

