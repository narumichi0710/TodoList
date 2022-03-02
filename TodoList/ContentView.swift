//
//  ContentView.swift
//  TodoList
//
//  Created by Regolith on 2022/03/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List (0..<5) { i in
        Text("aaa \(i)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
