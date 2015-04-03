//
//  Fibonacci.swift
//  ProjectEulerSwift
//
//  Created by Charles Oder on 4/2/15.
//  Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation

public class Fibonacci {
    
    private var count: Int
    
    init(count: Int) {
        self.count = count
    }
    
    public func getSequence() -> [Int]{
        var output: [Int] = []
        var lastTwo = [0, 1]
        var currentValue = lastTwo[1]
        while (output.count < count ) {
            output.append(currentValue)
            lastTwo[0] = lastTwo[1]
            lastTwo[1] = currentValue
            currentValue = lastTwo[0] + lastTwo[1]
        }
        return output
    }
}