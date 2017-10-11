//
//  main.swift
//  Calc-Array-Points
//
//  Created by Naruth Kongurai on 10/11/17.
//  Copyright © 2017 Naruth Kongurai. All rights reserved.
//

import Foundation

func add(_ valA:Int, _ valB:Int) -> Int {
    return valA + valB
}

func subtract(_ valA:Int, _ valB:Int) -> Int {
    return valA - valB
}

func multiply(_ valA:Int, _ valB:Int) -> Int {
    return valA * valB
}

func divide(_ valA:Int, _ valB:Int) -> Double {
    return Double(valA) / Double(valB)
}

func calcMathOperation(_ valA:Int, _ valB:Int, _ operand:String) {
    let i:String = operand
    switch i {
        case "+":
            print(add(valA, valB), terminator:"")   // terminator stops printing out "\n" at the end
        case "-":
            print(subtract(valA, valB), terminator:"")
        case "*":
            print(multiply(valA, valB), terminator:"")
        case "/":
            print(divide(valA, valB), terminator:"")
        default:
            print("Error, allowed operands include +, -, *, and / only. Function takes 2 ints and followed by an operand.")
    }
}

func addArrays(_ array:[Int]) -> Int {
    // a fast + short method provided by a StackOverFlow user
    // found in https:\//stackoverflow.com/questions/24795130/finding-sum-of-elements-in-swift-array
    return array.reduce(0, +)
}

func multiplyArrays(_ array:[Int]) -> Int {
    var result = 0;
    for number in array {
        result *= number
    }
    return result
}

func countArrays(_ array:[Int]) -> Int {
    return array.count
}

func averageArrays(_ array:[Int]) -> Double {
    return Double(addArrays(array)) / Double(countArrays(array))
}

func arrayMathOperation(_ array:[Int], _ operand:String) {
    let i:String = operand
    switch i {
    case "+":
        print(addArrays(array), terminator:"")
    case "*":
        print(multiplyArrays(array), terminator:"")
    case "count":
        print(countArrays(array), terminator:"")
    case "avg":
        print(averageArrays(array), terminator:"")
    default:
        print("Error, allowed operands include + and * only. Function takes an array of integers and followed by an operand.")
    }
}


