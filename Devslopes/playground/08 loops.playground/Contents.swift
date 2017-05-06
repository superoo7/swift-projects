//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var salaries = [45000.0,10000.0,54000.0,20000.0]

var counter = 0

// do..while
repeat {
    salaries[counter] = salaries[counter] * 1.10
    counter += 1
} while (counter < salaries.count)

print(salaries)

// for in loops
for i in 0..<salaries.count {
    salaries[i] = salaries[i] * 1.1
}

print(salaries)

for salary in salaries {
    print("Salary: \(salary)")
}