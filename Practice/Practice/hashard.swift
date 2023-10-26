//
//  hashard.swift
//  Practice
//
//  Created by 석진 on 10/26/23.
//

import Foundation


func hashard(num: Int) -> Bool
{
    var sum = 0
    
    for i in String(num)
    {
        sum += Int(String(i))!
    }
    
    if num % sum == 0
    {
        print("\(num)의 모든 자릿수의 합은 \(sum)입니다. \(num)은 \(sum)로 나누어 떨어지므로 \(sum)은 하샤드 수입니다.")
        return true
    }
    
    else
    {
        print("\(num)의 모든 자릿수의 합은 \(sum)입니다. \(num)은 \(sum)로 나누어 떨어지지 않으므로 \(sum)은 하샤드 수가 아닙니다.")
        return false
    }
}


let number = 18

print("x : \(number)      return : \(hashard(num: number))")
