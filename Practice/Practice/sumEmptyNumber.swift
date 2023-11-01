//
//  sumEmptyNumber.swift
//  Practice
//
//  Created by 석진 on 11/1/23.
//

import Foundation


func sumEmptyNumber(nums: [Int]) -> Int
{
    var result = 0
    
    for i in nums
    {
        result += i
    }
    
    return 45 - result
}


print(sumEmptyNumber(nums: [1, 2, 3, 4, 5, 6, 7, 8, 0]))
