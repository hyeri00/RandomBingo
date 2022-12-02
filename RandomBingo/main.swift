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
    // 디버그 영역에 입력된 문자열 읽어오는 함수
    var userInput = readLine() // 숫자를 입력받는 함수
    
    /* 옵셔널 스트링을 벗기고, 숫자로 변환해서 다시 벗기기 (세 가지 방법이 있음) */
    // 첫 번째 방법
//    if let input = userInput {
//        if let number = Int(input) {
//            myChoice = number
//        }
//    }
    // 두 번째 방법
    if let input = userInput, let number = Int(input) {
        myChoice = number
    }
    // 세 번째 방법
//    guard let input = userInput, let number = Int(input) else {
//        print("문제가 발생했습니다.")
//        break
//    }
//    myChoice = number
    
    
    // print(myChoice)
    
    // 업 다운 표시
    if computerChoice > myChoice {
        print("Up")
    } else if computerChoice < myChoice {
        print("Down")
    } else {
        print("⭐️ Bingo ⭐️")
        break // 반복문 종료
    }
}
