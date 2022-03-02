//
//  TaskData.swift
//  TodoList
//
//  Created by Regolith on 2022/03/02.
//

import Foundation

struct TaskData: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var isComplated: Bool
}


//if Debug
let testTaskData = [
    TaskData(title: "shopping", isComplated: true),
    TaskData(title: "laundly", isComplated: false),
    TaskData(title: "homeWork", isComplated: false)
]
//end if
