//
//  최대 공약수 최소 공배수 반환 코드
//  Practice
//
//  Created by 석진 on 11/23/23.
//

import Foundation


func CommonFactorMultiple(num1: Int, num2: Int) -> [Int]
{
    var num1Factors: [Int] = [], num2Factors: [Int] = []
    var num1multiple: [Int] = [], num2multiple: [Int] = []
    var n: Int = 1, maxFactor = 0
    var result: [Int] = []

    
    
    for i in 1 ... num1
    {
        if num1 % i == 0
        {
            num1Factors.append(i)
        }
        
        if i == n { n = 1 }
    }
    
    for i in 1 ... num2
    {
        if num2 % i == 0
        {
            num2Factors.append(i)
        }
        
        if i == n { n = 1 }
    }
    
    for i in 0 ..< num1Factors.count
    {
        for j in 0 ..< num2Factors.count
        {
            if num1Factors[i] == num2Factors[j]
            {
                maxFactor = num1Factors[i]
            }
        }
    }
    
    result.append(maxFactor)
    
    while true      // 최소 공배수 반환 while루프
    {
        num1multiple.append(num1 * n)
        num2multiple.append(num2 * n)
        
        for i in 0 ..< num1multiple.count
        {
            for j in 0 ..< num2multiple.count
            {
                if num1multiple[i] == num2multiple[j]       // 처음 만난 같은 수가 만나면
                {
                    result.append(num1multiple[i])
                    n = -1                                  // 배수인 n에 -1삽입 후 반복문 종료
                    break
                }
            }
            if n == -1 { break }                            // 반복문 종료
        }
        
        if n == -1 { break }                                // while 반목문 종료
        
        n += 1                                              // 배수 n 증가
    }
    
    return result
}

print(CommonFactorMultiple(num1: 3, num2: 12))
