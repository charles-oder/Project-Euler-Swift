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
}