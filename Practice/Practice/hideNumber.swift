//
//  hideNumber.swift
//  Practice
//
//  Created by 석진 on 11/1/23.
//

import Foundation


func hideNumber(number: String) -> String
{
    var result: String = ""
    let suffix = number.suffix(4)
    
    for _ in 0 ... number.count - 5
    {
        result += "*"
    }
    
    result += String(suffix)
    
    return result
}

print(hideNumber(number: "01012345678"))
