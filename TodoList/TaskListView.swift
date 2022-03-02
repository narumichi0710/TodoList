//
//  ContentView.swift
//  TodoList
//
//  Created by Regolith on 2022/03/02.
//

import SwiftUI

struct TaskListView: View {
    var body: some View {
        NavigationView{
            
            VStack(alignment: .leading){
                List (testTaskData) { task in
                    HStack {
                        Image(systemName: task.isComplated ? "checkmark.circle.fill" :"circle")
                            .resizable()
                            .frame(width: 20, height: 20)
                        
                        Text(task.id)
                    }
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
