//
//  정수 제곱근 판별
//  Practice
//
//  Created by 석진 on 10/25/23.
//

import Foundation


func squareRoot(num: Int64) -> Int64
{
    let sqr = sqrt(Double(num))
    
    if Int(sqr * sqr) == num
    {
        return Int64((sqr + 1) * (sqr + 1))
    }
    else
    {
        return -1
    }
}

print(squareRoot(num: 121))
