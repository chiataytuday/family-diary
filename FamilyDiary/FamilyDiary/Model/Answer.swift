//
//  Answer.swift
//  FamilyDiary
//
//  Created by sungtae on 2020/10/18.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import Foundation

struct Answer {
    let answeredUser : User
    var answerDescription: String // 질문의 내용
}

func checkIfCurrentUserAnswered(answerArray: [Answer]) -> Bool {
    var userExistsInAnswer = false
    for answer in answerArray {
        if answer.answeredUser.userName == currentUser.userName {
            userExistsInAnswer = true
        }
    }
    return userExistsInAnswer
}


