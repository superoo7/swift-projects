//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// inheritance

print("TEST")

class Vehicle {
    var tyre = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init() {
        print("This is parent class")
    }
    
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    func brake() {
        
    }
}

class SportsCar: Vehicle {
    
    override init()  {
        super.init()
        make = "BMW"
        model = "3 series"
        print("This is child")
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
    }
    
}

let car = SportsCar()

