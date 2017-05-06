
//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// Functional Programming
// create a function that can repeat operations in a mathematical sense. They dont do a whole bunch of things and manipulate all kinds of data. They do one thing and they do well

// Function
// is a relation between a set of inputs and a set of pemissible outputs with the property that each input is related to exactly one output

// Shape 1
var length = 5
var width = 10

var area = length * width

// Shape 2
var length2 = 6
var width2 = 12

var area2 = length2 * width2

// Shape 3
var length3 = 3
var width3 = 8

var area3 = length3 * width3

// -> return type
func calculateArea(length: Int, width: Int) -> Int {
    return length * width ;
    
}

let newArea = calculateArea(length: 5, width: 6)
let newArea2 = calculateArea(length: 3, width: 2)


var bankAccountBalance = 500.00
var shoe = 350.00


// Approach 1

//func purchaseItem(currentBalance:  Double, itemPrice: Double) -> Double {
//    if itemPrice <= currentBalance {
//        print("Purchased item for: $\(itemPrice)")
//        return currentBalance - itemPrice
//    } else {
//        print("You are broke!")
//        return currentBalance
//    }
//}
//
//print("Test")
//bankAccountBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: shoe)
//
//


func purchaseItem(currentBalance: inout Double, itemPrice: Double){
    if itemPrice <= currentBalance {
        print("Purchased item for: $\(itemPrice)")
        currentBalance = currentBalance - itemPrice
    } else {
        print("You are broke!")
    }
}

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: shoe)


