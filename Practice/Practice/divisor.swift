//
//  divisor.swift
//  Practice
//
//  Created by 석진 on 10/19/23.
//

import Foundation


func divisor(num: Int) -> Int
{
    var sum = 0
    print("\(num)의 약수는 ")
    for i in 1 ... num
    {
        if num % i == 0
        {
            sum += i
            if i < num
            {
                print(i, terminator: ", ")
            }
            else
            {
                print(i, terminator: "")
            }
        }
    }
    print("입니다.")
    return sum
}

let number = 12

print("이를 모두 더하면 \(divisor(num: number))입니다.")
