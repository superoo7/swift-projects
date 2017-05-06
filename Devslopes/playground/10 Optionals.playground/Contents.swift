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

var vehicle: Car?
vehicle = Car()
vehicle?.model = "Ford"

//if let v = vehicle {
//    if let m = v.model {
//        print(m)
//    }
//}

if let v = vehicle, let m = v.model {
    print(m)
}



