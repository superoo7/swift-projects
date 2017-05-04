//
//  CalculatorBrain.swift
//  calculator
//
//  Created by Johnson Lai on 03/04/2017.
//  Copyright © 2017 johnsonlwh7. All rights reserved.
//

import Foundation
// Model - UI independant
// struct automatically get an initalizer
struct CalculatorBrain {
    // Make this internal
    private var accumulator: Double?
    
    mutating func performOperation(_ symbol: String) {
        switch symbol {
        case "π":
            accumulator = Double.pi
        case "√":
            if let operand = accumulator {
                accumulator = sqrt(operand)
            }
        default:
            break
        }
    }
    mutating func setOperand(_ operand: Double) {
        accumulator = operand
    }
    
    var result: Double? {
        get {
            return accumulator
        } set {
            
        }
    }
    
}
