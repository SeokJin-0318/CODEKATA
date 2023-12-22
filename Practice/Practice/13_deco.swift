//
//  자릿수 더하기
//  Practice
//
//  Created by 석진 on 10/18/23.
//

import Foundation


func decollate(n: Int) -> Int
{
    var answer = 0

    for i in String(n)
    {
        answer += Int(String(i))!
    }
    
    return answer
}


let number = 123

print("N : \(number) / answer : ",decollate(n: number))
