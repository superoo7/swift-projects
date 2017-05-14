//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Johnson Lai on 09/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit
import AVFoundation // for audio

class ViewController: UIViewController {
    
    var btnSound: AVAudioPlayer!
    
    @IBOutlet weak var outputLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "InterfaceButtonDigital-06", ofType: "wav")
        let soundURL = URL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOf: soundURL)
            btnSound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        

        
    }
    
    @IBAction func numberPressed(sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        if btnSound.isPlaying {
            btnSound.stop()
        }
        
        btnSound.play()
    }
}

