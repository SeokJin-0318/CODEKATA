//
//  숫자로 이루어진 문자열
//  Practice
//
//  Created by 석진 on 11/20/23.
//

import Foundation


func isNumbers(s: String) -> Bool
{
    var result = true
    
    guard let ss = Int(s) else { return false}
    
    if s.count == 4 || s.count == 6
    {
        if ss % 2 == 0 || ss % 2 == 1
        {
            result = true
        }
        
        else
        {
            result = false
        }
    }
    
    else
    {
        result = false
    }
    
    return result
}


print(isNumbers(s: "a234"))
