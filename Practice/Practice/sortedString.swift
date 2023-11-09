//
//  문자열 내림차순 정렬 코드.swift
//  Practice
//
//  Created by 석진 on 11/9/23.
//

import Foundation


func sortedString(s:String) -> String
{

    return s.sorted(by: >).map{String($0)}.joined()
}

print(sortedString(s: "Zbcdefg"))
