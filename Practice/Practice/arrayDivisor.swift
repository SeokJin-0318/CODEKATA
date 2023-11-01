//
//  arrayDivisor.swift
//  Practice
//
//  Created by 석진 on 10/30/23.
//

import Foundation


func solution(arr: [Int], divisor: Int) -> [Int]
{
    var result: [Int] = [], location: Int = 0
    
    for i in arr
    {
        if (arr[location] % divisor) == 0
        {
            result.append(i)
        }
        
        location += 1
    }
    
    if result.count == 0
    {
        result.append(-1)
    }
    
    result.sort()
    
    return result
}


print(solution(arr: [5,9,7,10], divisor: 5))
