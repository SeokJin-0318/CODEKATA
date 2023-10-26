//
//  sum a to b.swift
//  Practice
//
//  Created by 석진 on 10/26/23.
//

import Foundation


func sum(numA: Int, numB: Int) -> Int64
{
    var sum = 0
    
    for i in numA ... numB
    {
        sum += i
    }
    
    return Int64(sum)
}


let numberA = 3, numberB = 5

print("a : \(numberA), b : \(numberB)\nreturn : \(sum(numA: numberA, numB: numberB))")
