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
    
    let string1_Arr = string1.map{(char) -> Int in return Int(String(char))!}        // 배열 생성
    
    for i in 0 ..< string1_Arr.count - string2.count    // 배열의 마지막 index에서 string2의 자릿수를 뺀 위치까지 루프
    {
        for j in 0 ..< string2.count        // 비교하는 숫자의 자릿수를 정해줌
        {
            sumNumber += Int(string1_Arr[i + j]) * Int(pow(10.0, exponent))
            // 제곱 지수가 세자리면 string2.count가 2 이기 때문에 2부터 시작해서 백의 자리부터 더해준다
            exponent -= 1.0     // 지수 내리기
        }
        
        if compareNumber >= sumNumber
        {
            result += 1
        }

        exponent = Double(string2.count) - 1        // 지수 초기화
        sumNumber = 0                               // 비교해줄 숫자 초기화
    }
    return result
}

print(compareString(string1: "3141592", string2: "271"))
