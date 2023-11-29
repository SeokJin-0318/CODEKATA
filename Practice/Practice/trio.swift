//
//  삼총사(더하면 0이 되는 경우의 수 계산)
//  Practice
//
//  Created by 석진 on 11/29/23.
//

import Foundation


func trio(studentNumber: [Int]) -> Int
{
    var result: Int = 0
    
    for i in studentNumber.startIndex ..< studentNumber.endIndex
    {
        for j in  i + 1 ..< studentNumber.endIndex
        {
            for k in j + 1 ..< studentNumber.endIndex
            {
                if (studentNumber[i] + studentNumber[j] + studentNumber[k]) == 0
                {
                    result += 1
                }
            }
        }
        
    }
    
    return result
}

let result: Int = trio(studentNumber: [-2, 3, 0, 2, -5])

result == 0 ? print("삼총사가 될 수 있는 방법이 없습니다.") : print(result)
