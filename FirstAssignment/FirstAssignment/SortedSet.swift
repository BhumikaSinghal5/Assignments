//
//  SortedSet.swift
//  FirstAssignment
//
//  Created by BKS-GGS on 10/01/23.
//

import Foundation


struct SortedSet {
    var numberArray : [Int] = []
        
    mutating func addNumberToArray(number: Int?) {
        guard let num = number, !numberArray.contains(num) else {
            return
        }
        numberArray.append(num)
        numberArray.sort()
    }
    
    mutating func deleteNumberFromIndex(index: Int?) {
        guard let numberIndex = index, numberIndex >= 0, numberArray.count > numberIndex else {
            return
        }
        numberArray.remove(at: numberIndex)
    }
    
    mutating func emptyArray() {
        numberArray.removeAll()
    }
    
    func findMaxValue() -> Int? {
        guard !numberArray.isEmpty else {
            return nil
        }
        return numberArray.max()
    }
    
    func findMinValue() -> Int? {
        guard !numberArray.isEmpty else {
            return nil
        }
        return numberArray.min()
    }
}

