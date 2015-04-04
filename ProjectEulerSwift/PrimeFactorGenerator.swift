//
// Created by Charles Oder on 4/3/15.
// Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation
import Darwin

class PrimeFactorGenerator {

    class func isPrime(value: Int64) -> Bool {
        let max = Int64(ceil(sqrt(Double(value))))
        for var i: Int64 = 2; i <= max; i++ {
            if (value % i == 0) {
                return false;
            }
        }
        return true;
    }

}
