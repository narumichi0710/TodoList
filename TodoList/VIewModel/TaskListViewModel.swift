//
//  TaskListViewModel.swift
//  TodoList
//
//  Created by Regolith on 2022/03/02.
//

import Foundation
import Combine

class TaskListViewModel: ObservableObject {
   @Published var taskCellViewModel = [TaskCellViewModel]()
    
    init() {
        self.taskCellViewModel = testTaskData.map { taskData in
            TaskCellViewModel(taskData: taskData)
        }
    }
}
