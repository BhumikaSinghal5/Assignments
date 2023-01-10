//
//  Queue.swift
//  FirstAssignment
//
//  Created by BKS-GGS on 10/01/23.
//

import Foundation

struct QueueCollection {
    
    var queue : [Int] = []
    
    mutating func enqueue(item: Int?) {
        guard let value = item else {
            return
        }
        queue.append(value)
    }
    
    mutating func dequeue() {
        guard !queue.isEmpty else {
            return
        }
        queue.removeFirst()
    }
    
    func front() -> Int? {
        guard !queue.isEmpty else {
            return nil
        }
        return queue.first
    }
    
    func rear() -> Int? {
        guard !queue.isEmpty else {
            return nil
        }
        return queue.last
    }
    
    func peek() -> Int? {
        guard !queue.isEmpty else {
            return nil
        }
        return queue.first
    }
}
