//
//  자연수 뒤집어 배열로 만들기
//  Practice
//
//  Created by 석진 on 10/20/23.
//

import Foundation


func reverse(num: Int64) -> [Int]
{
    var result: [Int] = []
    
    for i in String(num).reversed()
    {
        guard let number = Int(String(i)) else{ break }
        
        result.append(number)
    }
    return result
}

let number: Int64 = 12345

let result = reverse(num: number)

print(result)
