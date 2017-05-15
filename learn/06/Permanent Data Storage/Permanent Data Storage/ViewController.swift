//
//  ViewController.swift
//  Permanent Data Storage
//
//  Created by Johnson Lai on 16/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        UserDefaults.standard.set("Rob", forKey: "name")
        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        if let name = nameObject as? String {
            print(name)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

