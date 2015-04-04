//
// Created by Charles Oder on 4/3/15.
// Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation
import XCTest

class PrimeFactorGeneratorTests: XCTestCase {

    func testIsPrimeForPrimeNumber() {
        XCTAssert(PrimeFactorGenerator.isPrime(3))
        XCTAssert(PrimeFactorGenerator.isPrime(5))
        XCTAssert(PrimeFactorGenerator.isPrime(7))
        XCTAssert(PrimeFactorGenerator.isPrime(11))
    }

    func testIsPrimeForPrimeNonNumber() {
        XCTAssertFalse(PrimeFactorGenerator.isPrime(4))
        XCTAssertFalse(PrimeFactorGenerator.isPrime(12))
        XCTAssertFalse(PrimeFactorGenerator.isPrime(50))
        XCTAssertFalse(PrimeFactorGenerator.isPrime(100))
    }
}
