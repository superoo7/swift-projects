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
        
        UserDefaults.standard.set("Rob", forKey: "name")
        let nameObject = UserDefaults.standard.object(forKey: "name")
        
        if let name = nameObject as? String
        {
            print(name)
        }
        let arr = [1, 2, 3, 4]
        
        // create array
        UserDefaults.standard.set(arr, forKey: "array")
        
        let arrayObject = UserDefaults.standard.object(forKey: "array")
        
        if let array = arrayObject as? NSArray {
            print(array)
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

