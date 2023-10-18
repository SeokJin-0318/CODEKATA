//
//  compare.swift
//  Practice
//
//  Created by 석진 on 10/18/23.
//

import Foundation

func compare(num1:Int, num2:Int) -> Int
{
    if num1 == num2
    {
        return 1
    }
    else
    {
        return -1
    }
}

let num1 = 5, num2 = 4

let result = compare(num1: num1, num2: num2)

if result == 1
{
    print("num1이 \(num1)이고 num2가 \(num2)이므로 같습니다. 따라서 \(result)을 return합니다.")
}
print("num1이 \(num1)이고 num2가 \(num2)이므로 다릅니다. 따라서 \(result)을 return합니다.")
