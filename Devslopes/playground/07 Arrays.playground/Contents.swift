//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

// without array
var employee1Salary = 45000.0
var employee2Salary = 54000.0
var employee3Salary = 100000.0
var employee4Salary = 20000.0

// array

// : Array<Double>
var employeeSalaries: [Double] = [45000.0,54000.0,100000.0,20000.0]

print(employeeSalaries.count)

employeeSalaries.append(39000.50)

print(employeeSalaries.count)

// remove no 2
employeeSalaries.remove(at: 1)


var students = [String]()
print(students.count)


students.append("Jon")
students.append("Jacob")
students.append("Jack")
students.append("Jason")
students.append("James")
students.append("Joe")


var yes = students.remove(at: 0)

