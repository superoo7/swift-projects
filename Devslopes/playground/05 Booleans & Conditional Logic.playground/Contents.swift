//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"

var amITheBest = true

amITheBest = !amITheBest

if true == false || true == true {
    print("WTFish")
    
}

var hasDataFinishedDownloading: Bool = false
// ...
// ...#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)

if !hasDataFinishedDownloading {
    print("Loading Data...")
}

hasDataFinishedDownloading = true
// Load UI and other app features

if 1 == 2 {
    print("False")
} else {
    print("True")
}

// Equal to: ==
// Not Equal to: !=
// Greater than: >
// Greater than or equal to: >=
// Less than or equal to: <=
// Less than: <

var bankAccount = 500
var itemToBuy = 100

if bankAccount > itemToBuy {
    bankAccount = bankAccount - itemToBuy
    print("Purchased item, you have $\(bankAccount) left.")
} else {
    
}

// compare string
var bookTitle1 = "Harry Pot"
var bookTitle2 = "Harry Pot"

if bookTitle1 != bookTitle2 {
    print("Wrong spelling")
} else if bookTitle2.characters.count > 10 {
    print("Find a shorter title")
} else {
    print("DONE!")
}


