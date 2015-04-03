//
//  Multiples.swift
//  ProjectEulerSwift
//
//  Created by Charles Oder on 4/2/15.
//  Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation

public class Multiples {
    
    let multiple: Int;
    
    init(multiple: Int){
        self.multiple = multiple
    }
    
    class func mergeArrays(left: [Int], right: [Int]) -> [Int] {
        return left + right
    }
    
    func getSequence(max: Int) -> [Int] {
        var list: [Int] = [];
        for ( var i = self.multiple; i <= max; i += self.multiple){
            list.append(i)
        }
        return list
    }
}