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
            Image(systemName: self.taskCellVM.taskData.isComplated ? "checkmark.circle.fill" :"circle")
                .resizable()
                .frame(width: 20, height: 20)
                .onTapGesture {
                    self.taskCellVM.taskData.isComplated.toggle()
                }
            
            TextField("Enter the task", text: self.$taskCellVM.taskData.title)
        }
    }
}

struct TaskCellView_Previews: PreviewProvider {
    static var previews: some View {
        TaskCellView(taskCellVM: TaskCellViewModel(taskData: testTaskData[0]))
    }
}
