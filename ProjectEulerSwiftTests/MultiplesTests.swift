//
//  MultiplesTest.swift
//  ProjectEulerSwift
//
//  Created by Charles Oder on 4/2/15.
//  Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation
import XCTest

class MultiplesTests: XCTestCase {
    
    func testGetMultplesOf3() {
        let expectedArray : [Int] = [3, 6, 9, 12, 15, 18]
        let testObject = Multiples(multiple: 3)
        let actualArray = testObject.getSequence(20)
        XCTAssertTrue(expectedArray == actualArray, "Arrays are not equal!")
    }
    
    func testGetMultiplesOf5() {
        let expectedArray : [Int] = [5, 10, 15, 20]
        let testObject = Multiples(multiple: 5)
        let actualArray = testObject.getSequence(20)
        XCTAssertTrue(expectedArray == actualArray, "Arrays are not equal!")
    }
    
    func testArraysProperlyMerge() {
        let expectedArray : [Int] = [3, 5, 6, 9, 10, 12, 15, 18, 20]
        let array1 : [Int] = [3, 6, 9, 12, 15, 18]
        let array2 : [Int] = [5, 10, 15, 20]
    }
}