//
//  3진법 변환 / 뒤집기
//  Practice
//
//  Created by 석진 on 11/26/23.
//

import Foundation


func reserveBinary(number: Int) -> Int
{
    var quotient = number, result = 0
    var arr: [Int] = []
    while true
    {
        arr.append(quotient % 3)
        
        quotient /= 3
        
        if Int(quotient / 3) == 0
        {
            arr.append(1)
            break
        }
    }
    print("n : ", number)
    print("3진법 변환 : ", arr)
    arr = arr.reversed()
    
    for i in 0 ..< arr.count
    {
        result += arr[i] * Int(pow(3.0, Double(i)))
    }
    
    print("앞뒤 반전 : ", arr)
    
    return result
}

print("10진법 변환 : ", reserveBinary(number: 125))
