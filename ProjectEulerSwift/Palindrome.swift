//
//  Palindrome.swift
//  ProjectEulerSwift
//
//  Created by Charles Oder on 4/5/15.
//  Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation

class Palindrome {
    
    class func CreateDigitList(value: Int) -> [Int] {
        var n = value
        var list: [Int] = []
        while n > 0 {
            var digit = n % 10
            list.append(digit)
            n /= 10
        }
        
        return list.reverse()
    }
    
    class func isPalindrome(value: Int) -> Bool {
        let list = CreateDigitList(value)
        return list == list.reverse()
    }
}