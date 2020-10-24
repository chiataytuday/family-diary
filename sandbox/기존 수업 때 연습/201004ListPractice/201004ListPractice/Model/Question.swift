//
//  Question.swift
//  201004ListPractice
//
//  Created by Daniel Lim on 2020/10/04.
//  Copyright © 2020 Daniel Lim. All rights reserved.
//

import Foundation

struct Question {
    var index: Int
    var content: String
    var answered: Bool
}

var questions: [Question] = [
    Question(index: 1, content: "당신의 어릴적 꿈은 무엇이었나요?", answered: true),
    Question(index: 2, content: "오늘 저녁은 드셨나요?", answered: false),
    Question(index: 3, content: "당신이 지금 갖고싶은 물건은?", answered: true)
]
