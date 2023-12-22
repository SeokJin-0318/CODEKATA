//
//  이상한 문자 만들기
//  Practice
//
//  Created by 석진 on 11/27/23.
//

import Foundation


func convertWords(s: String) -> String
{
    var upperCase = 1, result: String = ""
    
    for word in s        // for문과 를 사용해 문자열 s를 순환하면서 글자 하나 하나의 값을 돌려받는다
    {
        guard let ascii = word.asciiValue           // ascii 선언 후 글자 값을 아스키 코드 값으로 변환, 초기화
        else { break }
                
        if word == Character(" ")
        {
            result.append(String(word))
            upperCase = 1
        }
        else
        {
            result.append(upperCase % 2 == 1 ? String(UnicodeScalar(ascii - 32)) : String(word))
            upperCase += 1
        }
    }
    
    return result
}

print(convertWords(s: "try hello world"))
