//
//  약수 덧셈 코드
//  Practice
//
//  Created by 석진 on 11/8/23.
//

import Foundation


func divisorSum(left: Int, right: Int) -> Int
{
    var divisorSum = 0, divisorCount = 0
    
    for i in left ... right
    {
        print("\(i)           ",terminator: "")
        
        for j in 1 ... i
        {
            if (i % j == 0 && i == j)
            {
                divisorCount += 1
                
                print("\(j)               ",terminator: "")
                
            }
            
            else if i % j == 0
            {
                divisorCount += 1
                
                print("\(j), ",terminator: "")
            }
        }
        
        if divisorCount % 2 == 0
        {
            divisorSum += i
        }
        
        print(divisorCount)
        
        divisorCount = 0
    }
    
    return divisorSum
}

print("수             약수            약수의 개수")

print(divisorSum(left: 13, right: 17))
