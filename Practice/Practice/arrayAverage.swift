//
//  arrayAverage.swift
//  Practice
//
//  Created by 석진 on 10/18/23.
//

import Foundation


func arrayAverage(numbers: [Int]) -> Double
{
    var sum = 0, count = 0
    
    for i in numbers
    {
        sum += i
        count += 1
    }
    if sum % count == 0 || sum % count == count / 2
    {
        return Double(sum) / Double(count)
    }
    
    else
    {
        return -1
    }
}

let numbersArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let result = arrayAverage(numbers: numbersArray)

if result == -1
{
    print("배열 재입력")
}
else
{
    print(result)
}
