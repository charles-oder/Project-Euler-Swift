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
    
    func testGetMultplesOf5() {
        let expectedArray : [Int] = [3, 6, 9, 12, 15, 18]
        let testObject = Multiples(multiple: 3)
        let actualArray = testObject.getSequence(20)
        XCTAssertTrue(expectedArray == actualArray, "Arrays are not equal!")
        
    }
}