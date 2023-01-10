//
//  Calculations.swift
//  FirstAssignment
//
//  Created by BKS-GGS on 10/01/23.
//

import Foundation

struct Calculations {
    
    func addNumbers(firstNumber firstNum: Int?, secondNumber secondNum: Int?) -> Int? {
        guard let num1 = firstNum, let num2 = secondNum else { return nil }
        return num1 + num2
    }
    
    func subtractNumbers(firstNumber firstNum: Int?, secondNumber secondNum: Int?) -> Int? {
        guard let num1 = firstNum, let num2 = secondNum else { return nil }
        return num1 - num2
    }
    
    func multiplyNumbers(firstNumber firstNum: Int?, secondNumber secondNum: Int?) -> Int? {
        guard let num1 = firstNum, let num2 = secondNum else { return nil }
        return num1 * num2
    }
    
    func divideNumbers(firstNumber firstNum: Int?, secondNumber secondNum: Int?) -> Int? {
        guard let num1 = firstNum, let num2 = secondNum else { return nil }
        return num1 / num2
    }
}
