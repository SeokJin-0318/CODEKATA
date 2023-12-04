//
//  main.swift
//  Practice
//
//  Created by 석진 on 12/1/23.
//

import Foundation


func compareString(string1: String, string2: String) -> Int
{
    var result: Int = 0
    guard let compareNumber = Int(string2) else { return 0 }
    var sumNumber = 0       //비교해줄 숫자
    
    let string1Arr = string1.map{(char) -> Int in return Int(String(char))!}
    
    for i in 0 ..< string1Arr.count
    {
        sumNumber += Int(string1Arr[i]) * 100
        sumNumber += Int(string1Arr[i + 1]) * 10
        sumNumber += Int(string1Arr[i + 2])
        
        if i == string1Arr.count - 3
        {
            break
        }
        
        else if sumNumber <= compareNumber
        {
            result += 1
        }
        
        sumNumber = 0
    }
    
    return result
}

print(compareString(string1: "3141592", string2: "271"))
