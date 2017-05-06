//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// Dictionaries
var namesOfIntegers = [Int: String]()

namesOfIntegers[3] = "three"
namesOfIntegers[44] = "fourty-four"

// clear all the keys
namesOfIntegers = [:]


var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]
// var airports = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]

print(airports.count)

if airports.isEmpty {
    print("The airports dictionary is empty")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for key in airports.keys {
    print(key)
}

for val in airports.values {
    print(val)
}

