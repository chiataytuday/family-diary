//
//  Answer.swift
//  FamilyDiary
//
//  Created by sungtae on 2020/10/18.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import Foundation

struct Answer {
    let answerId: Int
    let answeringUserId: Int
    var answerDescription: String
    var answered: Bool = false
}

var dummy_Answers: [Answer] = [
    Answer(answerId: 0, answeringUserId: 0, answerDescription: "어릴적 대통령이 꿈이었다. "),
    Answer(answerId: 1, answeringUserId: 0, answerDescription: "노트북, 토끼인형, 유치원 때부터 모은 편지"),
    Answer(answerId: 2, answeringUserId: 0, answerDescription: "인셉션, 테넷, 내년에 나올 디즈니 영화 소울"),
    Answer(answerId: 3, answeringUserId: 0, answerDescription: "김치찌개"),

]
