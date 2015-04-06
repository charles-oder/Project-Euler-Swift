//
//  FactorsTests.swift
//  ProjectEulerSwift
//
//  Created by Charles Oder on 4/5/15.
//  Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation
import XCTest

class FactorsTests: XCTestCase {
    
    func testGenerateProductOfFactorsOneThroughTen(){
        let expectedValue = 2520
        let actualValue = Factors.generateSmallestDividendForSequence(1, sequenceEnd:10)
        XCTAssertEqual( expectedValue, actualValue )
    }
    
    func testGenerateProductOfWayTooBigOfNumbers(){
        let expectedValue = 0
        let actualValue = Factors.generateSmallestDividendForSequence(Int.max - 10, sequenceEnd:Int.max)
        XCTAssertEqual( expectedValue, actualValue )
    }
    
}