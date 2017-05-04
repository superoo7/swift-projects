//
//  ViewController.swift
//  RetroCalculator
//
//  Created by Johnson Lai on 22/03/2017.
//  Copyright © 2017 superoo7.com. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var outputLbl: UILabel!
    var btnSound: AVAudioPlayer!
    
    var currentOperation = Operation.Empty
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""
    var result = ""
    
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Empty = "Empty"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // get a path
        let path = Bundle.main.path(forResource: "btn", ofType: "wav");
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
        // add the tag value into running number
        runningNumber += "\(sender.tag)"
        outputLbl.text = runningNumber
        
    }
    
    @IBAction func onDividePressed(sender: AnyObject) {
        processOperation(operation: .Divide)
    }
    @IBAction func onMultiplyPressed(sender: AnyObject) {
        processOperation(operation: .Multiply)
    }
    @IBAction func onSubtractPressed(sender: AnyObject) {
        processOperation(operation: .Subtract)
    }
    @IBAction func onAddPressed(sender: AnyObject) {
        processOperation(operation: .Add)
    }
    @IBAction func onEqualPressed(sender: AnyObject) {
        processOperation(operation: currentOperation)
    }
    
    @IBAction func onClearPressed(sender: UIButton!) {
        playSound()
        
        leftValStr = ""
        rightValStr = ""
        runningNumber = ""
        currentOperation = Operation.Empty
        outputLbl.text = "0"
    }
    
    func playSound() {
        if btnSound.isPlaying {
            btnSound.stop()
        }
        btnSound.play()
    }
    
    func processOperation(operation: Operation) {
        playSound()
        // if We have pressed one of the operator keys
        if currentOperation != Operation.Empty {
        // if We have pressed one of the number keys
            if runningNumber != "" {
                    rightValStr = runningNumber
                    runningNumber = ""
                
                if currentOperation == Operation.Multiply {
                        result = "\(Double(leftValStr)! * Double(rightValStr)!)"
                } else if currentOperation == Operation.Divide {    result = "\(Double(leftValStr)! / Double(rightValStr)!)"
                    
                } else if currentOperation == Operation.Subtract {  result = "\(Double(leftValStr)! - Double(rightValStr)!)"
                    
                } else if currentOperation == Operation.Add {
                        result = "\(Double(leftValStr)! + Double(rightValStr)!)"
                }
            leftValStr = result
            outputLbl.text = result
                
        }
        currentOperation = operation
        } else {
                // This is when first time when operator being pressed
            
            leftValStr = runningNumber
            runningNumber = ""
            currentOperation = operation

        }
        
    }
}

