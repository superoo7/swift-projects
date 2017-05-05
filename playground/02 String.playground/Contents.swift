//: Playground - noun: a place where people can play

import UIKit

var str: String = "Hello, playground" //Excplicitly declared type

var firstName = "Jack"
var lastName  = "Bauer"

var age = 45
var fullName  = firstName + " " + lastName  //Concatenate
var fullName1 = "\(firstName) \(lastName) is \(age)"  //String interpolation

fullName.append(" III")

var bookTitle = "revenge of the crab cakes"
bookTitle = bookTitle.capitalized

var caps  = "HAHAHAHA THIS IS SO FUNNY"
caps = caps.lowercased()

var sentence = "What the fetch? Heck that is crazy"

if sentense.contains("fetch") || sentence.contains("Heck") {
    sentence.replacingOccurrences(of: "fetch", with: "tuna")
    sentence.replacingOccurrences(of: "Heck", with: "Playa")
}






