//
//  Factors.swift
//  ProjectEulerSwift
//
//  Created by Charles Oder on 4/5/15.
//  Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation

class Factors {
    
    class func generateSmallestDividendForSequence( sequenceStart: Int, sequenceEnd: Int ) -> Int {
        var intArray: [Int] = []
        for ( var i = 0; i < sequenceEnd - sequenceStart; i++ ) {
            intArray.append(sequenceStart + i);
        }
        return generateSmallestDividend( intArray );
    }

    
    class func generateSmallestDividend(intArray: [Int]) -> Int {
        var output = 0;
        for (output = intArray[0]; output < Int.max; output++) {
            if (isDivisibleByAllValues( output, intArray: intArray )) {
                return output;
            }
        }
        return output;
    }
    
    private class func  isDivisibleByAllValues( dividend: Int, intArray: [Int] ) -> Bool {
        for value in intArray {
            if ( dividend % value != 0) {
                return false;
            }
        }
        return true;
    }

}