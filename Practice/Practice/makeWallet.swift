//
//  최소 직사각형.swift
//  Practice
//
//  Created by 석진 on 12/14/23.
//

import Foundation


func wallet(size: [[Int]]) -> Int
{
    var maxLength = 0, minLength = 0

    for i in size
    {
        maxLength = max(maxLength, i.max()!)        // maxLength와 i중 max값을 비교해 큰 수를 저장
        minLength = max(minLength, i.min()!)        // minLength와 i중 min값을 비교해 큰 수를 저장
    }

    return maxLength * minLength
}


print(wallet(size: [[60, 50], [30, 70], [60, 30], [80, 40]]))
