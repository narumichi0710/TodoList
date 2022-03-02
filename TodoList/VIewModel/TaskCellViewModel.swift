//
//  TaskCellViewModel.swift
//  TodoList
//
//  Created by Regolith on 2022/03/02.
//

import Foundation
import Combine

class TaskCellViewModel: ObservableObject, Identifiable {
    @Published var taskData: TaskData
    var id = ""
    private var cancallable = Set<AnyCancellable>()
    
    init(taskData: TaskData) {
        self.taskData = taskData
        $taskData.map{ task in
            task.id
        }
        .assign(to: \.id, on: self)
        .store(in: &cancallable)
    }
}
