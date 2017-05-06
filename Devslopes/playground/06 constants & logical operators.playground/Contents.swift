//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// Logical NOT operator - unary prefix operator

//constant
let allowedEntry = false

if !allowedEntry {
    print("ACCESS DENIED")
}

let enterDoorCode = true
let passedRetinaScan = false
let iAmTomCruise = false

if enterDoorCode && passedRetinaScan || iAmTomCruise {
    print("Welcome")
} else {
    print("ACCESS DENIED AGAIN")
}

let hasDoorKey = false
let knowsOverriedPassword = true

if hasDoorKey || knowsOverriedPassword {
    print("Welcome!")
} else {
    print("Access DENIED AGAIN!!!")
}



