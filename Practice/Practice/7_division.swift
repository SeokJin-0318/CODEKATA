//
//  두 수의 나눗셈
//  Practice
//
//  Created by 석진 on 10/18/23.
//

import Foundation


func solution(num1: Double, num2: Double) -> Int
{
    let result = (num1 / num2)
    
    return Int(result * 1000)
}

let num1 = 7, num2 = 3

let devide = (Double(num1) / Double(num2))

let result = solution(num1: Double(num1), num2: Double(num2))

print("num1이 \(num1), num2가 \(num2)이므로 \(num1) / \(num2) = \(devide)에 1,000을 곱하면 \(result)이 됩니다.")
