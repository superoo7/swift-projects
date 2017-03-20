//
//  MusicListVC.swift
//  SwappingScreen
//
//  Created by Johnson Lai on 20/03/2017.
//  Copyright © 2017 superoo7.com. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Hey Soul Sister"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 
}
