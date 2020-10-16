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
}

var dummy_Questions: [Question] = [
    Question(questionId: 0, questionDescription: "당신의 어릴 적 꿈은 뭐였나요?"),
    Question(questionId: 1, questionDescription: "집이 무너진다면, 가족들을 구한 후 가장 먼저 챙겨 나올 물건 세 가지는?"),
    Question(questionId: 2, questionDescription: "가족과 함께 보고 싶은 인생영화는 무엇인가요?"),
    Question(questionId: 3, questionDescription: "당신에게 추억과 향수를 불러 일으키는 음식은 무엇인가요?"),
    Question(questionId: 4, questionDescription: "당신이 가장 좋아하는 과자가 무엇인가요?"),
    Question(questionId: 5, questionDescription: "요새 가장 자주 듣는 노래가 뭘까요?"),
    Question(questionId: 6, questionDescription: "가족에게 전하지 못했던 말이 있나요?"),
    Question(questionId: 7, questionDescription: "가족들에게 감동받았던 적이 언제인가요?"),
    Question(questionId: 8, questionDescription: "가족 멤버 중 한명에게 꼭 바라는 것은 뭔가요?"),
    Question(questionId: 9, questionDescription: "당신의 어릴 적 꿈은?"),
    Question(questionId: 10, questionDescription: "당신의 어릴 적 꿈은?"),
    Question(questionId: 11, questionDescription: "당신의 어릴 적 꿈은?"),
    Question(questionId: 12, questionDescription: "당신의 어릴 적 꿈은?"),
    Question(questionId: 13, questionDescription: "당신의 어릴 적 꿈은?"),
    Question(questionId: 14, questionDescription: "당신의 어릴 적 꿈은?"),
    Question(questionId: 15, questionDescription: "당신의 어릴 적 꿈은?")
]
