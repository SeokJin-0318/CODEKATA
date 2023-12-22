//
//  평균 구하기
//  Practice
//
//  Created by 석진 on 10/18/23.
//

import Foundation


func arrAver(array: [Int]) -> Double
{
    var sum = 0, arrayCount = 0
    
    for i in array
    {
        sum += i
        arrayCount += 1
    }
    
    var f_sum = 0
    
    print("arr : [", terminator: "")
    for i in array
    {
        f_sum += i
        if f_sum == sum
        {
            print("\(i)", terminator: "")
            
        }
        else
        {
            print("\(i), ", terminator: "")
        }
    }
    print("]")

    return Double(sum) / Double(arrayCount)
}


let arr = [1, 2, 3, 4]

let result = arrAver(array: arr)

print("return : \(result)")
