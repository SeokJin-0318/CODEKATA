//
//  repetition.swift
//  Practice
//
//  Created by 석진 on 11/6/23.
//

import Foundation


func repetition(n: Int) -> String
{
    var result = ""
    
    for i in 0 ... n - 1
    {
        if i % 2 == 0
        {
            result += "수"
        }
        
        else
        {
            result += "박"
        }
    }
    return result
}


print(repetition(n: 3))

