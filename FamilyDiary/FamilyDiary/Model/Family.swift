//
//  Family.swift
//  FamilyDiary
//
//  Created by Daniel Lim on 2020/10/30.
//  Copyright © 2020 Family Diary. All rights reserved.
//

import Foundation

struct Family {
    let familyId: Int // 대답한 사람
    var members: [User]
}

var dummyFamily: [Family] = [
    Family(familyId: 0, members: [dummyUsers[0],dummyUsers[1],dummyUsers[2],dummyUsers[3]])
]
