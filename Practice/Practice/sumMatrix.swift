//
//  행렬의 덧셈
//  Practice
//
//  Created by 석진 on 11/21/23.
//

import Foundation


func sumMatrix(arr1: [[Int]], arr2: [[Int]]) -> [[Int]]
{
    var result: [[Int]] = []
    
    for row in 0 ... arr1.count - 1
    {
        result.append([])
        for col in 0  ... arr1[row].count - 1
        {
            result[row].append(arr1[row][col] + arr2[row][col])
        }
    }
    
    return result
}

print(sumMatrix(arr1: [[1,2], [2,3]], arr2: [[3,4], [5,6]]))
