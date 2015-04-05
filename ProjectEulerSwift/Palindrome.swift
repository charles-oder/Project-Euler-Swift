//
//  Palindrome.swift
//  ProjectEulerSwift
//
//  Created by Charles Oder on 4/5/15.
//  Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation

class Palindrome {
    
    class func CreateDigitList(value: Int) -> NSMutableArray {
        var n = value
        var list: NSMutableArray = NSMutableArray()
        while n > 0 {
            var digit = n % 10
            list.insertObject(digit, atIndex: 0)
            n /= 10
        }
        
        return list
    }
    
    class func isPalindrome(value: Int) -> Bool {
        let list = CreateDigitList(value)
        var reversedList = NSMutableArray()
        for n in list {
            reversedList.insertObject(n, atIndex: 0)
        }
        return list == reversedList
    }

    class func findLargestPalindromeOfProducts(numberLength: Int) -> Int {
        let max = Int(pow(10, Double(numberLength)))
        var largestPalidrome = 0
        for var x = 1; x < max; x++ {
            for var y = 1; y < max; y++ {
                let product = x * y
                if isPalindrome(product) && (product > largestPalidrome) {
                    largestPalidrome = product
                }
            }
        }
        return largestPalidrome
    }
}