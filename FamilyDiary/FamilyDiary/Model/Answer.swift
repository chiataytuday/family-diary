//
//  Answer.swift
//  FamilyDiary
//
//  Created by sungtae on 2020/10/18.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import Foundation

struct Answer {
    let answeringUserId: Int // 대답한 사람
    var answerDescription: String // 질문의 내용
    var answered: Bool = false
}

var dummy_Answers: [Answer] = [
    Answer(answeringUserId: 0, answerDescription: "어릴적 대통령이 꿈이었다. "),
    Answer(answeringUserId: 1, answerDescription: "노트북, 토끼인형, 유치원 때부터 모은 편지"),
    Answer(answeringUserId: 2, answerDescription: "인셉션, 테넷, 내년에 나올 디즈니 영화 소울"),
    Answer(answeringUserId: 3, answerDescription: "김치찌개"),

]
