//
//  removeLowNumber.swift
//  Practice
//
//  Created by 석진 on 11/1/23.
//

import Foundation


func removeLowNumber(nums: [Int]) -> [Int]
{
    var result: [Int] = nums
    var compare = 9223372036854775807, arr_index = 0, delete_index = 0
    
    for i in nums
    {
        if i <= compare
        {
            compare = i
            delete_index = arr_index
        }
        
        arr_index += 1
    }

    result.remove(at: delete_index)
    
    if result.count == 0
    {
        result.append(-1)
    }
    
    return result
}

print(removeLowNumber(nums: [4, 3, 2, 1]))
