//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// OOP
// Create Blueprint for multiple copies

class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive() {
        // accelerate the vehicle
    }
    
    func brake() {
        // braking
    }
    
}

// object pass by reference

// bmw object
let bmw = Vehicle()   // instiating an instance of vehicle class
bmw.model = "328i"

let ford = Vehicle()
ford.model = "F150"
ford.brake()

func passByReference(vehicle: Vehicle) {
    vehicle.model = "Cheese"
}

print(ford.model)

passByReference(vehicle: ford)

print(ford.model)


var someoneAge = 20

func passByValue(age: Int) {
    var age = 10
    // let newAge = age   // cannot be modified
}

passByValue(age: someoneAge)