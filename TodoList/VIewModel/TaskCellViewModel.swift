//
//  TaskCellViewModel.swift
//  TodoList
//
//  Created by Regolith on 2022/03/02.
//

import Foundation
import Combine

class TaskCellViewModel: ObservableObject, Identifiable {
    @Published var taskList: TaskData
    var id = ""
    private var cancallable = Set<AnyCancellable>()
    
    init(taskList: TaskData) {
        self.taskList = taskList
        $taskList.map{ task in
            task.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancallable)
    }
}
