//
//  부족한 금액 계산 코드.swift
//  Practice
//
//  Created by 석진 on 11/9/23.
//

import Foundation

func solution(price: Int, money: Int, count: Int) -> Int64
{
    var answer: Int64 = 0
    
    for i in 1 ... count
    {
        answer -= Int64(price * i)
        
        if 0 >= money + Int(answer)
        {
            break
        }
    }
    
    answer += Int64(money)
    
    return -answer
}

func price(price: Int, count: Int) -> String
{
    var result = ""
    
    for i in 1 ... count
    {
        if i == count
        {
            result += "\(price * i)"
        }
        
        else
        {
            result += "\(price * i) + "
        }
    }
    
    return result
}

let price = 3
let money = 20
let count = 4
let result = solution(price: price, money: money, count: count)
let total_price = money + Int(result)

print("이용금액이 \(price)인 놀이기구를 \(count)번 타고 싶은 고객이 현재 가진 금액이 \(money)이라면, 총 필요한 놀이기구의 이용 금액은 \(total_price)(= \(price(price: price, count: count)))이 되어 \(result)만큼 부족하므로 \(result)을 return 합니다.")
