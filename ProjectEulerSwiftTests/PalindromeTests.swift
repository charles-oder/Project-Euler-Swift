//
//  PalindromeTests.swift
//  ProjectEulerSwift
//
//  Created by Charles Oder on 4/5/15.
//  Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation
import XCTest

class PalindromeTests: XCTestCase {
    
    func testGetDigitList() {
        let testValue = 123456789
        let expectedList: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9 ]
        let actualList = Palindrome.CreateDigitList(testValue)
        
        XCTAssertEqual(expectedList, actualList)
    }
    
    func testIsPalindromeOnPalindrome() {
        let testValue = 9009
        XCTAssert(Palindrome.isPalindrome(testValue))
    }
    
    func testIsPalindromeOnNonPalindrome() {
        let testValue = 9019
        XCTAssertFalse(Palindrome.isPalindrome(testValue))
    }
    
    func testFindLargestPalindromeOfTwoDigitProducts() {
        let expectedValue = 9009
        let actualValue = Palindrome.findLargestPalindromeOfProducts(2)
        XCTAssertEqual(expectedValue, actualValue)
    }
    
    func testFindLargestPalindromeOfThreeDigitProducts() {
        let expectedValue = 906609
        let actualValue = Palindrome.findLargestPalindromeOfProducts(3)
        XCTAssertEqual(expectedValue, actualValue)
    }
}