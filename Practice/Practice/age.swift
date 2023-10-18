//
//  main.swift
//  Practice
//
//  Created by 석진 on 10/17/23.
//

import Foundation


func solution(age: Int) -> Int
{
    return 2022 - (age - 1)
}

let age = 25

let year = solution(age: age)

print("2022년 기준으로 \(age)살이므로 \(year)년생입니다.")
