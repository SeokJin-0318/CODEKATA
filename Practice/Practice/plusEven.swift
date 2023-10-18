//
//  plusEven.swift
//  Practice
//
//  Created by 석진 on 10/18/23.
//

import Foundation

func plusEven(num: Int) -> Int
{
    var sum = 0
    print("n이 \(num)이므로 ", terminator: "")
    for i in 1 ... num
    {
        if i % 2 == 0
        {
            if i == num
            {
                sum += i
                print("\(i) ", terminator: "")
            }
            
            else
            {
                sum += i
                print("\(i) + ", terminator: "")
            }
        }
    }
    print("= \(sum)을 return 합니다.")
    return sum
}

let n = 10

let result = plusEven(num: n)
