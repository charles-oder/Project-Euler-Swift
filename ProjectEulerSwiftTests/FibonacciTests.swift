//
//  FibonacciTests.swift
//  ProjectEulerSwift
//
//  Created by Charles Oder on 4/2/15.
//  Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation
import XCTest

class FibonacciTests: XCTestCase {
    
    func testSequenceOfTen(){
        var expectedArray = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
        var fib = Fibonacci(count: 10)
        XCTAssertEqual(expectedArray, fib.getSequence())
    }
    
    func testSumOfSequenceUpToFourMillion(){
        var expectedValue = 4613732 // 4613732
        var fib = Fibonacci()
        fib.max = 4000000
        NSLog("\(Int.max)")
        var sequence = fib.getSequence()
        XCTAssertEqual(expectedValue, sequence.reduce(0, combine: sum))
    }
    
    func sum(acc: Int, val:Int) -> Int {
        if val % 2 == 0 {
            return val + acc
        } else {
            return acc
        }
    }
}