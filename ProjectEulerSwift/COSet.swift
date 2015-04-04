//
//  COSet.swift
//  ProjectEulerSwift
//
//  Created by Charles Oder on 4/2/15.
//  Copyright (c) 2015 Charles Oder. All rights reserved.
//

import Foundation

public class COSet<T: Comparable> {
    
    private var values: [T] = []
    
    public func add(value: T){
        if let index = findIndex(value) {
            return
        }
        values.append(value)
    }
    
    public func add(array: [T]){
        for value in array {
            add(value)
        }
    }
    
    public func findIndex(value: T) -> Int? {
        for (index, val) in enumerate(values) {
            if val == value {
                return index
            }
        }
        return nil
    }
    
    public func size() -> Int {
        return values.count
    }
    
    public func toArray() -> [T]{
        return values
    }
    
    public func contains(value:T) -> Bool {
        for val in values {
            if val == value {
                return true;
            }
        }
        return false
    }
}