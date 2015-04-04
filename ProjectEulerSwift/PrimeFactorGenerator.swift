//
// Created by Charles Oder on 4/3/15.
// Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation
import Darwin

class PrimeFactorGenerator {

    private let value: Int64
    private var set: COSet<Int64>

    init(value: Int64) {
        self.value = value
        self.set = COSet<Int64>()
    }

    class func isPrime(value: Int64) -> Bool {
        let max = getValueRoot(value)
        for var i: Int64 = 2; i <= getValueRoot(value); i++ {
            if (value % i == 0) {
                return false;
            }
        }
        return true;
    }

    private class func getValueRoot(value: Int64) -> Int64 {
        return Int64(ceil(sqrt(Double(value))))
    }

    func getPrimeFactors() -> [Int64] {
        set = COSet<Int64>()
        for var i: Int64 = 3; i <= PrimeFactorGenerator.getValueRoot(value); i++ {
            addToListIfPrime( i );
        }
        return set.toArray();
    }

    func addToListIfPrime(n: Int64) {
        if ( isPrimeFactor(n) ) {
            set.add(n);
            if ( !set.contains( value / n) && PrimeFactorGenerator.isPrime( value / n)) {
                set.add( value / n);
            }
        }
    }

    func isPrimeFactor( i: Int64 ) -> Bool {
        return PrimeFactorGenerator.isPrime( i ) && value % i == 0;
    }

    func getLargestPrimeFactor() -> Int64 {
        var max: Int64 = 0
        for val in self.getPrimeFactors() {
            if val > max {
                max = val
            }
        }
        return max
    }

}
