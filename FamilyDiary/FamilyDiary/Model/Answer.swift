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
//Struct Answer
//    answeredUser : User
//    answerDescription : String
//

var dummy_Answers: [Answer] = [
    Answer(answeredUser: dummyUsers[0], answerDescription: "헬로우")

]
