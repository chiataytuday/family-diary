//
//  Family.swift
//  FamilyDiary
//
//  Created by Daniel Lim on 2020/10/30.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import Foundation

struct Family {
    var familyCode : String = "" //    familyCode : String = “b6#4j1!”
    var familyMembers : [User] = [] //
    let familyNumberLimit : Int = 4 //     (4인 가족으로 제한)
    var answers : [[Answer]] = answerList
}
// (초희님) - 로그인을 한 후 가족 구성원이 4명이 모아졌다는 가정하에,


var exampleFamily : Family = Family(familyCode: "b6#4j1!", familyMembers: [User(userName: "나플라"),User(userName: "오왼"),User(userName: "루피"),User(userName: "블루")])

var questionList: [Question] = [
    Question(questionId: 1, questionDescription: "집이 무너진다면 가장 먼저 챙길 물건 세 가지는?"),
    Question(questionId: 2, questionDescription: "나의 인생영화는 무엇이며 이유는?"),
    Question(questionId: 3, questionDescription: "우리 가족을 한 단어로 표현하면?"),
    Question(questionId: 4, questionDescription: "내가 가장 즐겨듣는, 아니면 즐겨듣던 노래는?"),
    Question(questionId: 5, questionDescription: "가족에게 감동받았던 순간은?"),
    Question(questionId: 6, questionDescription: "어린 시절 어떤 어른이 되고 싶었나요?"),
    Question(questionId: 7, questionDescription: "쓰면 쓸 수록 마음에 드는 물건은?"),
    Question(questionId: 8, questionDescription: "요새 가장 많이 보는 유투브 채널은?"),
    Question(questionId: 9, questionDescription: "위인을 한 명 만날 수 있나면 누굴 만날건가요?"),
    Question(questionId: 10, questionDescription: "현재의 나의 가장 큰 고민은?")
]

// 아직 빈 정답 리스트
var answerList: [[Answer]] = [
    [],
    [],
    [],
    [],
    [],
    [],
    [],
    [],
    [],
    []
]





// (초희님) - 로그인과 동시에 자기 자신은 currentUser로 들어간다.
let currentUser : User = exampleFamily.familyMembers[0]






