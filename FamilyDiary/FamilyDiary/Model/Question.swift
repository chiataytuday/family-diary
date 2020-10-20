//
//  Question.swift
//  FamilyDiary
//
//  Created by Daniel Lim on 2020/10/16.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import Foundation

struct Question {
    let questionId: Int
    let questionDescription: String
    var answeredUsers: [User] = []
    var released: Bool = false
    var userAnswered: Bool = true
    var answers: [Answer] = []
}

var questionList: [Question] = [
    Question(questionId: 1, questionDescription: "집이 무너진다면, 가족들을 구한 후 가장 먼저 챙겨 나올 물건 세 가지는?", userAnswered: false, answers: dummy_Answers),
    Question(questionId: 2, questionDescription: "가족과 함께 보고 싶은 인생영화는 무엇인가요?"),
    Question(questionId: 3, questionDescription: "오늘 같은 날씨에 요리해서 먹고 싶은 음식은 무엇인가요?"),
    Question(questionId: 4, questionDescription: "우리 가족을 한 단어로 표현하면?"),
    Question(questionId: 5, questionDescription: "당신이 가장 좋아하는 인생노래는 무엇인가요?",userAnswered: false),
    Question(questionId: 6, questionDescription: "요즘 가장 많이 검색하는 키워드는?"),
    Question(questionId: 7, questionDescription: "가족에게 전하지 못했던 말이 있나요?"),
    Question(questionId: 8, questionDescription: "가족들에게 감동받았던 적이 언제인가요?"),
    Question(questionId: 9, questionDescription: "가족 멤버 중 한명에게 꼭 바라는 것은 뭔가요?"),
    Question(questionId: 10, questionDescription: "당신의 어릴 적 꿈은?"),
    Question(questionId: 11, questionDescription: "가장 많은 사람 앞에 서본 경험을 말해주세요"),
    Question(questionId: 12, questionDescription: "최근 한 달 동안 가장 자주 방문하는 장소는?"),
    Question(questionId: 13, questionDescription: "가장 많이 보는 유투브 채널은?"),
    Question(questionId: 14, questionDescription: "쓰면 쓸 수록 마음에 드는 아이템은 무엇인가요?"),
    Question(questionId: 15, questionDescription: "어린시절 나의 모습을 표현해봅시다."),
]
