//
//  main.swift
//  Practice
//
//  Created by 석진 on 11/27/23.
//

import Foundation


import Foundation


func strange(s: String) -> String
{
    var result: String = ""
    
    for i in 0 ..< s.count
    {
        if s[i] == " "
        {
            result += s[i]
        }
        else if i % 2 == 1
        {
            result += unicode.Scalar(String(s[i] - 32))!
        }
        
        i += 1
    }
    
    return result
}

strange(s: "try hello world")
