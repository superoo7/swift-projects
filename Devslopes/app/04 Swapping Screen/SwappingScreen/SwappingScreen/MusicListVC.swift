//
//  MusicListVC.swift
//  SwappingScreen
//
//  Created by Johnson Lai on 09/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "Party Rock Antheme"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
