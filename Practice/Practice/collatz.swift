//
//  Collatz.swift
//  Practice
//
//  Created by 석진 on 10/26/23.
//

import Foundation


func collatz(num: Int) -> Int
{
    var result = num, loop = 0
    
    while true
    {
        if result == 1
        {
            break
        }
        
        else if loop == 500
        {
            loop = -1
            break
        }
        
        else if result % 2 == 0
        {
            result /= 2
            loop += 1
        }
        
        else if result % 2 == 1
        {
            result = result * 3 + 1
            loop += 1
        }
    }
    
    return loop
}


let number = 6

print("n : \(number)\nresult : \(collatz(num: number))")
