//
//  main.swift
//  RandomBingo
//
//  Created by 혜리 on 2022/10/18.
//

import Foundation

var computerChoice = Int.random(in: 1...100)
var myChoice: Int = 0

while true { // 조건이 true라서 계속 실행을 시킴
    var userInput = readLine() // 숫자를 입력받는 함수
    
    if let input = userInput {
        if let number = Int(input) {
            myChoice = number
        }
    }
    
    // print(myChoice)
    
    if computerChoice > myChoice {
        print("Up")
    } else if computerChoice < myChoice {
        print("Down")
    } else {
        print("⭐️ Bingo ⭐️")
        break // 반복문 종료
    }
}
