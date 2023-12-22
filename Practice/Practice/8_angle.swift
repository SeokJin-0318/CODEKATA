//
//  각도기
//  Practice
//
//  Created by 석진 on 10/18/23.
//

import Foundation

func angle(num: Int) -> Int
{
    if num < 90
    {
        print("angle이 \(num)이므로 예각입니다. 따라서 1을 return합니다.")
        return 1
    }
    
    else if num == 90
    {
        print("angle이 \(num)이므로 직각입니다. 따라서 2를 return합니다.")
        return 2
    }
    else if num < 180
    {
        print("angle이 \(num)이므로 둔각입니다. 따라서 3을 return합니다.")
        return 3
    }
    
    else
    {
        print("angle이 \(num)이므로 평각입니다. 따라서 4를 return합니다.")
        return 4
    }
}

let angle = 97

let result = angle(num: angle)
