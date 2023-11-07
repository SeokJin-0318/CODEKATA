//
//  inner product.swift
//  Practice
//
//  Created by 석진 on 11/7/23.
//

import Foundation


func innerProduct(arrA:[Int], arrB:[Int]) -> Int
{
    var result = 0
    
    for i in 0 ... arrA.count - 1
    {
        result += arrA[i] * arrB[i]
    }
        
    return result
}

print(innerProduct(arrA: [1, 0, -1], arrB: [-1, 0, 1]))
