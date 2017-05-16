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
        
//        let url = URL(string: "https://www.apple.com/")!
        
//        webView.loadRequest(URLRequest(url: url))
        // custom HTML
//        webView.loadHTMLString("<h1>Hello there!</h1>", baseURL: nil)
        
        if let url = URL(string: "https://www.stackoverflow.com/") {
            let request = NSMutableURLRequest(url: url)
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                data, response, error in
                
                if error != nil {
                    print(error)
                } else {
                    if let unwrappedData = data {
                        let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
                        
                        print(dataString)
                        
                        DispatchQueue.main.sync(execute: {
                            // Update UI
                        })
                        // custom HTML
                        // self.webView.loadHTMLString(dataString! as String, baseURL: nil)
                    }
                }
            }
         task.resume()
        
        }
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

