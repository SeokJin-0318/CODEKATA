//
//  숫자 문자열과 영단어 변환
//  Practice
// 
//  Created by 석진 on 12/22/23.
//

import Foundation


func changeNumber(s: String) -> Int
{
    var result: String = s
    var table: [String] = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    
    for i in 0 ..< table.count
    {
        result = result.replacingOccurrences(of: table[i], with: String(i))
    }
    
    return Int(result)!
}


print(changeNumber(s: "oneone4seveneight"))
