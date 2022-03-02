//
//  ContentView.swift
//  TodoList
//
//  Created by Regolith on 2022/03/02.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var taskListVM = TaskListViewModel()
    @State var ifAddNewItem = false
    
    var body: some View {
        NavigationView{
            
            VStack(alignment: .leading){
                List{
                    ForEach (self.taskListVM.taskCellViewModel) { taskCellVM in
                        TaskCellView(taskCellVM: taskCellVM)
                    }
                    if self.ifAddNewItem {
                        TaskCellView(taskCellVM: TaskCellViewModel(
                            taskData: TaskData(title: "", isComplated: false)
                        )){ taskData in
                            self.taskListVM.addNewItem(taskData: taskData)
                            self.ifAddNewItem.toggle()
                        }
                    }
                }
                Button(action:{
                    self.ifAddNewItem.toggle()
                }, label: {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        Text("add new task")
                    } .foregroundColor(.primary)
                })
            }
            .padding(.leading, 10)
        }
        .navigationTitle("Task List")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}
