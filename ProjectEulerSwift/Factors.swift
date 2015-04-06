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
        var intArray = NSMutableArray()
        for ( var i = 0; i <= sequenceEnd - sequenceStart; i++ ) {
            intArray.addObject(sequenceStart + i);
        }
        return generateSmallestDividend( intArray );
    }

    
    class func generateSmallestDividend(intArray: NSArray) -> Int {
        var output: Int = 0;
        var increment = intArray[intArray.count - 1] as Int
        for (output = increment; output < Int.max; output += increment) {
            if (isDivisibleByAllValues( output, intArray: intArray )) {
                return output;
            }
        }
        return 0;
    }
    
    private class func  isDivisibleByAllValues( dividend: Int, intArray: NSArray ) -> Bool {
        for value in intArray {
            if ( dividend % (value as Int) != 0) {
                return false;
            }
        }
        return true;
    }

}