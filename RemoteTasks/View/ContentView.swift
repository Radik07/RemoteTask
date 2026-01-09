//
//  ContentView.swift
//  RemoteTasks
//
//  Created by Ricardo Lopez on 08/01/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = TaskListViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.tasks) { task in
                Text(task.title)
            }
            .navigationTitle("Tasks")
            .task {
                await viewModel.loadTasks()
            }
        }
    }
}

#Preview {
    ContentView()
}
