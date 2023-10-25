//
//  descending powers.swift
//  Practice
//
//  Created by 석진 on 10/25/23.
//

import Foundation


func sort(num: Int) -> Int
{
    let arr = String(num).map{ String($0) }
    
    return Int(String(arr.sorted().joined().reversed()))!
}


print(sort(num: 11786543))
