//
//  Task.swift
//  RemoteTasks
//
//  Created by Ricardo Lopez on 09/01/26.
//

struct Task: Identifiable, Codable {
    let id: Int
    let title: String
    let completed: Bool
}

