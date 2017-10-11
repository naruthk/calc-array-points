//
//  main.swift
//  Calc-Array-Points
//
//  Created by Naruth Kongurai on 10/11/17.
//  Copyright © 2017 Naruth Kongurai. All rights reserved.
//

import Foundation

// Working with Calculators

func add(_ valA:Int, _ valB:Int) -> Int {
    return valA + valB
}

func subtract(_ valA:Int, _ valB:Int) -> Int {
    return valA - valB
}

func multiply(_ valA:Int, _ valB:Int) -> Int {
    return valA * valB
}

func divide(_ valA:Int, _ valB:Int) -> Int {
    return valA / valB
}

func calculate(_ valA:Int, _ valB:Int, _ operation:(Int, Int) -> Int) -> Int {
    return operation(valA, valB)
}

// Working with Arrays

func add(_ array:[Int]) -> Int {
    // a faster + shorter method provided by a StackOverFlow user
    // found in https:\//stackoverflow.com/questions/24795130/finding-sum-of-elements-in-swift-array
    return array.reduce(0, +)
}

func multiply(_ array:[Int]) -> Int {
    var result = 0;
    for number in array {
        result *= number
    }
    return result
}

func count(_ array:[Int]) -> Int {
    return array.count
}

func average(_ array:[Int]) -> Double {
    return Double(add(array)) / Double(count(array))
}

func calculate(_ array:[Int],_ operation:([Int]) -> Int) -> Int {
    return operation(array)
}

// Working with Points (Tuples)

func add(_ tupleA:(Int, Int), _ tupleB:(Int, Int)) -> (Int, Int) {
    let sumOfX = add(tupleA.0, tupleB.0)
    let sumOfY = add(tupleA.1, tupleB.1)
    return (sumOfX, sumOfY)
}

func subtract(_ tupleA:(Int, Int), _ tupleB:(Int, Int)) -> (Int, Int) {
    let differenceOfX = subtract(tupleA.0, tupleB.0)
    let differenceOfY = subtract(tupleA.1, tupleB.1)
    return (differenceOfX, differenceOfY)
}

// In the case of non-two-arity points (more than 2 points given by the user

func add(_ points:(Int, Int)...) -> (Int, Int) {
    var sumOfX = 0
    var sumOfY = 0
    for point in points {
        sumOfX += point.0
        sumOfY += point.1
    }
    return (sumOfX, sumOfY)
}

func subtract(_ points:(Int, Int)...) -> (Int, Int) {
    var differenceOfX = 0
    var differenceOfY = 0
    for point in points {
        differenceOfX -= point.0
        differenceOfY -= point.1
    }
    return (differenceOfX, differenceOfY)
}

// Working with Points (Dictionaries)




// Generic Test:
print(calculate(15, 5, divide))
