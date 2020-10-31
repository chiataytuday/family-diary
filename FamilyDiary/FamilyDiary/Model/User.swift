//
//  User.swift
//  FamilyDiary
//
//  Created by Daniel Lim on 2020/10/16.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import Foundation

struct User {
    var userName : String = ""
}

var dummyUsers: [User] = [
    User(userName: "엄마"),
    User(userName: "아빠"),
    User(userName: "다현"),
    User(userName: "성태"),
    User(userName: "초희")
]

// 로그인 된 유저가 엄마이다. 추후에 바꾸어야 함 (서버 구축 이후)
let currentUser: User = dummyUsers[0]

