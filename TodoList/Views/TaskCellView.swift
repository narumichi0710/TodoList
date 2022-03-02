//
//  TaskCellView.swift
//  TodoList
//
//  Created by Regolith on 2022/03/02.
//

import SwiftUI

struct TaskCellView: View {
    @ObservedObject var taskCellVM: TaskCellViewModel
    var body: some View {
        HStack {
            Image(systemName: self.taskCellVM.taskList.isComplated ? "checkmark.circle.fill" :"circle")
                .resizable()
                .frame(width: 20, height: 20)
            
            Text(self.taskCellVM.taskList.title)
        }
    }
}

struct TaskCellView_Previews: PreviewProvider {
    static var previews: some View {
        TaskCellView(taskCellVM: TaskCellViewModel(taskList: testTaskData[0]))
    }
}
