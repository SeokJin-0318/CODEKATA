//
//  직사각형 별 찍기
//  Practice
//
//  Created by 석진 on 11/22/23.
//

import Foundation


func printRectangle(row: Int, col: Int)
{
    for _ in 1 ... col
    {
        for i in 1 ... row
        {
            if i == row{ print("*") }
            
            else{ print("*", terminator: "") }
        }
    }
}


print("사각형의 가로 길이와 세로 길이를 순서대로 입력하세요")
let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }

let (a, b) = (n[0], n[1])

printRectangle(row: a, col: b)
