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
    var familyMembers : [User] = []
    let familyNumberLimit : Int = 4 //     (4인 가족으로 제한)
    var questions : [Question] = questionList
}

// (초희님) - 로그인을 한 후 가족 구성원이 4명이 모아졌다는 가정하에,

var exampleFamily : Family = Family(familyCode: "b6#4j1!", familyMembers: [User(userName: "나플라"),User(userName: "오왼"),User(userName: "루피"),User(userName: "블루")], questions: questionList)

// (초희님) - 로그인과 동시에 자기 자신은 currentUser로 들어간다.

let currentUser : User = exampleFamily.familyMembers[0]






