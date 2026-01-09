//
//  TaskService.swift
//  RemoteTasks
//
//  Created by Ricardo Lopez on 09/01/26.
//

import Foundation

final class TaskService {
    func fetchTasks() async throws -> [Task] {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Task].self, from: data)
    }
}
