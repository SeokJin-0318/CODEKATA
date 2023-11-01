//
//  sumArray.swift
//  Practice
//
//  Created by 석진 on 11/1/23.
//

import Foundation


func sumArray(arr: [Int], signs: [Bool]) -> Int
{
    var result = 0, location: Int = 0
    
    for _ in arr
    {
        if signs[location] == false
        {
            result += arr[location] * -1
        }
        
        else
        {
            result += arr[location]
        }
        
        location += 1
    }
    
    return result
}


print(sumArray(arr: [4, 7, 12], signs: [true, false, true]))
