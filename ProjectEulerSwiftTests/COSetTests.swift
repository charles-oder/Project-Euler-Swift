//
//  COSetTests.swift
//  ProjectEulerSwift
//
//  Created by Charles Oder on 4/2/15.
//  Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation
import XCTest

class COSetTest: XCTestCase {
    
    func testAddValueAbsentInSet(){
        var set = COSet<Int>()
        set.add(5)
        XCTAssertNotNil(set.findIndex(5), "Could not find value")
    }
    
    func testAddValueAlreadyInSet() {
        var set = COSet<Int>()
        set.add(5)
        set.add(5)
        XCTAssertEqual(1, set.size(), "Could not find value")
    }
    
    func testAddArrayToEmptySet() {
        var array = [1, 2, 3, 4]
        var set = COSet<Int>()
        set.add(array)
        XCTAssertEqual(4, set.size())
        XCTAssertEqual(array, set.toArray())
    }
    
    func testAddArrayToSetWithSomeMatchingValues() {
        var array = [1, 2, 3, 4]
        var set = COSet<Int>()
        set.add(1)
        set.add(array)
        XCTAssertEqual(4, set.size())
        XCTAssertEqual(array, set.toArray())
    }
    
    func testArraysProperlyMerge() {
        let expectedArray : [Int] = [3, 6, 9, 12, 15, 18, 5, 10, 20]
        let array1 : [Int] = [3, 6, 9, 12, 15, 18]
        let array2 : [Int] = [5, 10, 15, 20]
        var set = COSet<Int>()
        set.add(array1)
        set.add(array2)
        XCTAssertEqual(expectedArray, set.toArray())
    }

}