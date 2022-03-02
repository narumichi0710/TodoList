//
//  ContentView.swift
//  TodoList
//
//  Created by Regolith on 2022/03/02.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var taskListVM = TaskListViewModel()
    var body: some View {
        NavigationView{
            
            VStack(alignment: .leading){
                List (self.taskListVM.taskCellViewModel) { taskCellVM in
                    TaskCellView(taskCellVM: taskCellVM)
                }
                Button(action:{
                    
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
