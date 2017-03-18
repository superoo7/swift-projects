//
//  ViewController.swift
//  quiz
//
//  Created by Johnson Lai on 18/03/2017.
//  Copyright © 2017 superoo7.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // give every instance of view controller
    // an outlet named questionLabel & answerLabel
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    // Create questions and answer combination
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    // set current question to be 0
    var currentQuestionIndex: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        // question will have 1 increament
        currentQuestionIndex += 1
        // if question is the last question, restart
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        // make current question
        let question: String = questions[currentQuestionIndex]
        
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
        
    }

}

