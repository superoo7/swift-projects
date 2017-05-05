//: Playground - noun: a place where people can play

import UIKit

// Numbers
//Type inference (preferred)
var age = 30

// explicitly declared type
var weight: Int = 200  // Int


// For longer integer use Double
var someNum: Double = 120301931239


// Double 64-bit floating point (preferred)
// Double > Float
var milesRan = 88.1
var pi: Float = 3.14

milesRan = Double(pi)
pi = Float(milesRan)

// Arithmetic Operator
// + - / *

var area = 15 * 20
var sum = 5 + 6
var diff = 10 - 3
var div = 13 / 5
var rem = 13 % 5  // remainder operator (other lang called modulus)

var result = "The result of 13 / 5 is \(div) with a remainder of \(rem)"

var randomNumber = 13

// can be divide by 2
if randomNumber % 2 == 0 {
    print("this is an even numnber")
} else {
    print("this is an odd number")
}

// math
var result2 = 15 * ((5 + 7) / 3 )





