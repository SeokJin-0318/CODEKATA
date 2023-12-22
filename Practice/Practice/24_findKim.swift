//
//  서울에서 김서방 찾기
//  Practice
//
//  Created by 석진 on 10/30/23.
//

import Foundation


func findKim(seoul: [String]) -> String
{
    var location = 0
    
    for i in seoul
    {
        if i == "Kim"
        {
            break
        }
        location += 1
    }
    return "김서방은 \(location)에 있다"
}


print(findKim(seoul: ["Jane","Lim","Kim"]))
