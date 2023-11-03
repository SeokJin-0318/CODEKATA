//
//  middleWord.swift
//  Practice
//
//  Created by 석진 on 11/3/23.
//

import Foundation


func middleWord(s: String) -> String
{
    var result: String = ""
    var start: String.Index, end: String.Index
    
    if s.count % 2 == 1
    {
        start = s.index(s.startIndex, offsetBy: s.count/2)
        end = s.index(s.startIndex, offsetBy: s.count/2+1)
        result = String(s[start ..< end])
    }
    
    else
    {
        start = s.index(s.startIndex, offsetBy: s.count/2-1)
        end = s.index(s.startIndex, offsetBy: s.count/2+1)
        result = String(s[start ..< end])
    }
    
    return result
}

print(middleWord(s: "abcddcba"))
