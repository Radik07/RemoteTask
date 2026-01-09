//
//  TaskListViewModel.swift
//  RemoteTasks
//
//  Created by Ricardo Lopez on 09/01/26.
//

import Foundation
import Combine

@MainActor
final class TaskListViewModel: ObservableObject {
    
    @Published var tasks: [Task] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    @Published var showAlert: Bool = false
    
    private let service = TaskService()
    
    func loadTasks() async {
        isLoading = true
        errorMessage = nil
        do {
            tasks = try await service.fetchTasks()
        } catch {
            errorMessage = "Failed to load tasks"
            showAlert = true
        }
        isLoading = false
    }
}



