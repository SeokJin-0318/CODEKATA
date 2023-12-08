//
//  크기가 작은 부분 문자열
//  Practice
//
//  Created by 석진 on 12/1/23.
//

import Foundation


func compareString(string1: String, string2: String) -> Int
{
    var result: Int = 0
    guard let compareNumber = Int(string2) else { return 0 }
    var sumNumber = 0, exponent = Double(string2.count) - 1    // 비교해줄 숫자, 제곱 지수
    
    let string1Arr = string1.map{(char) -> Int in return Int(String(char))!}
    
    for i in 0 ..< string1Arr.count
    {
        for j in 0 ..< string2.count
        {
            sumNumber += Int(string1Arr[i + j]) * Int(pow(10.0, exponent))
            // 제곱 지수가 세자리면 string2.count가 2 이기 때문에 2부터 시작해서 백의 자리부터 더해준다
            exponent -= 1.0     // 지수 내리기
        }
        
        if i == string1Arr.count - string2.count
        {
            break
        }
        
        else if  compareNumber >= sumNumber
        {
            result += 1
        }
        
        exponent = Double(string2.count) - 1
        sumNumber = 0
    }
    
    return result
}


print(compareString(string1: "500220839878", string2: "7"))
