//
//  remainder.swift
//  Practice
//
//  Created by 석진 on 10/19/23.
//

import Foundation

func remainder(num: Int) -> Int
{
    var result = 0
    
    for i in 3 ... num
    {
        if num % i == 1
        {
            result = i
            break
        }
    }
    return result
}


let number = 10

let result = remainder(num: number)


print("\(number)을 \(result)으로 나눈 나머지가 1이고, \(result)보다 작은 자연수 중에서 문제의 조건을 만족하는 수가 없으므로, \(result)을 return 해야 합니다.")
