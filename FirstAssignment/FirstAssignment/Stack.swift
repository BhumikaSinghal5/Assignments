//
//  Stack.swift
//  FirstAssignment
//
//  Created by BKS-GGS on 10/01/23.
//

import Foundation

struct StackCollection {
    
    var items : [Int] = []
    
    mutating func push(item: Int?) {
        guard let value = item else {
            return
        }
        items.append(value)
    }
    
    mutating func pop() {
        guard !items.isEmpty else {
            return
        }
        items.removeLast()
    }
    
    func peek() -> Int? {
        guard !items.isEmpty else {
            return nil
        }
        return items.first
    }
}
