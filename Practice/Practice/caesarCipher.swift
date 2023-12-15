//
//  시저암호
//  Practice
//
//  Created by 석진 on 12/14/23.
//

import Foundation


func caesar(string: String, range: Int) -> String
{
    var asciiValue: [UInt32] = []       // string를 한 문자씩 담아줄 배열
    var changeValue: UInt32 = 0         // 아스키 값에서 range를 더해준 값
    var result: String = ""
    var index = 0       // asciiValue 배열 내 index
    
    for i in string.unicodeScalars      // string이 unicodeScalar로 변환된 값에 for in 루프
    {
        asciiValue.append(i.value)      // i 값에 해당하는 값을 value 값으로( 아스키 값 ) 바꾼 후 append
        changeValue = asciiValue[index] + UInt32(exactly: range)!
        // changeValue에 index에 해당하는 문자에 range 값을 더해준다
        
        if asciiValue[index] == 32     // index에 해당하는 아스키 값이 공백 ( 32 )일 경우
        {
            changeValue = 32
        }
        
        else if changeValue > 122 || changeValue > 90 && 90 >= asciiValue[index]       
        // 계산 값이 a - z 중 z( 122 )를 넘거나 계산 전 값이 90 이하면서 A - Z 중  또는 Z( 90 ) 값을 넘으면
        {
            changeValue -= 26       // 대, 소문자가 아닌 값이 나오는 것을 방지하기 위해 changeValue -26
        }
        
        result += String(UnicodeScalar(changeValue)!)       // 밀어낸 문자를 result 에 더해준다
        index += 1      // 인덱스 증가
    }
    
    return result
}


print(caesar(string: "Zz aA", range: 1))
