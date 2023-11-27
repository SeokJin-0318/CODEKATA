//
//  이상한 문자 만들기
//  Practice
//
//  Created by 석진 on 11/27/23.
//

import Foundation


func strange(s: String) -> String
{
    var s_arr: [Character] = [], result: String = "", ascii: UInt8 = 0
    for i in s
    {
        s_arr.append(i)
    }
    
    for i in 0 ..< s.count
    {
        ascii = s_arr[i].asciiValue!        //s_arr 내 i 번째 값을 아스키 코드 값으로 변환
        
       if s_arr[i] == " "
        {
           result.append(String(s_arr[i]))
        }
        else
        {
            i % 2 == 1 ? result.append(String(UnicodeScalar(ascii - 32))) : result.append(String(s_arr[i]))
        }
    }
    
    return result
}

print(strange(s: "try hello world"))
