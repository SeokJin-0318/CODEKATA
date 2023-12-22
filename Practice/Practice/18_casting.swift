//
//  문자열을 정수로 바꾸기
//  Practice
//
//  Created by 석진 on 10/25/23.
//

import Foundation


func casting(s: String) -> Int
{
    guard let number = Int(s) else { return 0 }
    
    return number
}

print(casting(s: "-1234"))
