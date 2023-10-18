//
//  oddEven.swift
//  Practice
//
//  Created by 석진 on 10/18/23.
//

import Foundation


func oddEven(num: Int) -> String
{
    if num % 2 == 1
    {
        return "Odd"
    }
    
    else
    {
        return "Even"
    }
}

let number = 9

let result = oddEven(num: number)

print(result)
