//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// Rule 1: dont implicitly unwrapping

// Optional ?
// this variable may or may not have a value
var lotteryWinnings: Int?

// Unwrapping !
var test: Int? = 5
print(test)
print(test!)

// method 1
if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

// method 2 (preferred)
lotteryWinnings = 100
if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
    
}

var vehicle: Car? = Car()            // declare vehicle optional class

vehicle?.model = "Ford"             // make vehicle model = "Ford"

//if let v = vehicle {
//    if let m = v.model {
//        print(m)
//    }
//}


// safe from crash
if let v = vehicle, let m = v.model {
    print(m)
}

// create array of cars
var cars: [Car]?

cars = [Car]()

if let carArr = cars, carArr.count > 0 {
    // only execute if not nil and if more than 0 element
    
} else {
    cars?.append(Car())
    
}
print(cars?.count ?? "")

class Person {
    // var age = 0
    var _age: Int!
    
    var age: Int {
        if _age == nil {
            _age = 15
        }
        
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}


var jack = Person()
print(jack.age)

class Dog {
    var species

    // constructor
    init(someSpecies: String) {
        self.species = someSpecies
    }

}

var lab = Dog(someSpecies: "Pug")
print(lab.species)



