//
//  x만큼 간격이 있는 n개의 숫자(등차수열)
//  Practice
//
//  Created by 석진 on 10/20/23.
//

import Foundation


func arithmetic(num1: Int, num2: Int) -> [Int64]
{
    var progression: [Int64] = []
    
    for i in 0 ... (num2 - 1)
    {
        progression.append(Int64(num1 * (i + 1)))
    }
    return progression
}


let number = -4, times = 3

let result: [Int64] = arithmetic(num1: number, num2: times)

print(result)
