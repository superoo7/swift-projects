//
//  ViewController.swift
//  Animation
//
//  Created by Johnson Lai on 16/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    var counter = 1
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        
        image.image = UIImage(named: "frame_\(counter)_delay-0.07s.gif")
        counter += 1
        
        if counter == 15 {
            counter = 0
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

