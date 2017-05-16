//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Johnson Lai on 16/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // web view
        
        let url = URL(string: "https://www.apple.com/")!
        
//        webView.loadRequest(URLRequest(url: url))
        webView.loadHTMLString("<h1>Hello there!</h1>", baseURL: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

