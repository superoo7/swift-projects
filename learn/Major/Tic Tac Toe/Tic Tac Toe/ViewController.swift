//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Johnson Lai on 17/05/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var playAgainBtn: UIButton!
    
    var activeGame = true
    
    // 1 is noughts, 2 is crosses
    var activePlayer = 1
    
    // 0 - empty, 1 - noughts, 2 - crosses
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let winningCombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    @IBAction func playAgain(_ sender: Any) {
        activeGame = true
        
        // 1 is noughts, 2 is crosses
        activePlayer = 1
        
        // 0 - empty, 1 - noughts, 2 - crosses
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        
        
        
        for i in 1..<10 {
            if let button = view.viewWithTag(i) as? UIButton {
                button.setImage(nil, for:[])
            }
        }
        
        winnerLabel.isHidden = true
        playAgainBtn.isHidden = true
        
        winnerLabel.center = CGPoint(x: winnerLabel.center.x - 600, y: winnerLabel.center.y)
        playAgainBtn.center = CGPoint(x: playAgainBtn.center.x - 600, y: playAgainBtn.center.y)
    }
    
    @IBAction func btnPressed(_ sender: AnyObject) {
        // array start from 0
        let activePosition = sender.tag - 1
        
        
        if gameState[activePosition] == 0 && activeGame {
            if activePlayer == 1 {
                sender.setImage(UIImage(named: "nought"), for: [])
                activePlayer = 1
                gameState[activePosition] = 1
            } else {
                sender.setImage(UIImage(named: "cross"), for: [])
                activePlayer = 2
                gameState[activePosition] = 2
            }
        }

        
        
        for combination in winningCombinations {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]]
            {
                // win
                activeGame = false
                winnerLabel.isHidden = false
                playAgainBtn.isHidden = false

                
                
                if gameState[combination[0]] == 1 {
                    winnerLabel.text = "Noughts has won!"
                } else {
                    winnerLabel.text = "Crosses has won!"
                }
                
                
                UIView.animate(withDuration: 1, animations: {
                    self.winnerLabel.center = CGPoint(x: self.winnerLabel.center.x + 600, y: self.winnerLabel.center.y)
                    self.playAgainBtn.center = CGPoint(x: self.playAgainBtn.center.x + 600, y: self.playAgainBtn.center.y)
                })
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // make winning label invisible
        winnerLabel.isHidden = true
        playAgainBtn.isHidden = true
        
        winnerLabel.center = CGPoint(x: winnerLabel.center.x - 600, y: winnerLabel.center.y)
        playAgainBtn.center = CGPoint(x: playAgainBtn.center.x - 600, y: playAgainBtn.center.y)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

