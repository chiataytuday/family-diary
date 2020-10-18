//
//  User.swift
//  FamilyDiary
//
//  Created by Daniel Lim on 2020/10/16.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import Foundation

struct User {
    let userId: Int
    let familyId: Int
    var name: String
}

var dummy_users: [User] = [
    User(userId: 0, familyId: 0, name: "엄마"),
    User(userId: 1, familyId: 0, name: "아빠"),
    User(userId: 2, familyId: 0, name: "다현"),
    User(userId: 3, familyId: 0, name: "성태"),
    User(userId: 4, familyId: 0, name: "초희"),
]
