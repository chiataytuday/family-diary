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
    var initialQuestions : [Question] = questionList
}

// 로그인을 한 후 가족 구성원이 4명이 모아졌다는 가정하에,










