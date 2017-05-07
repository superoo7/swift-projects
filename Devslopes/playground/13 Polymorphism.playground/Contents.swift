//: Playground - noun: a place where people can play

import UIKit

// polymorphism
// polymorphism is the ability (in programming) to present the same interface for differing underlying forms (data types).

class Shape {
    var area: Double?
    
    func calculateArea(valA: Double, valB: Double) {
        
    }
}

class Triangle: Shape {
    
    override func calculateArea(valA: Double, valB: Double) {
        area = valA * valB / 2
    }
    
}

class Rectangle: Shape {
    
    override func calculateArea(valA: Double, valB: Double) {
        area = valA * valB
    }
    
}