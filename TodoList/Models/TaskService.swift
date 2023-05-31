//
//  TaskService.swift
//  TodoList
//
//  Created by GiaBao on 28/03/2023.
//

import Foundation

class TaskService {
    func getTask() throws -> [TaskModel]{
        guard let tasks = UserDefaults.standard.data(forKey: "tasks") else{
            return []
        }
        return try JSONDecoder.init().decode([TaskModel].self, from: tasks)
    }
    func saveTask(task: TaskModel) throws{
        var tasks = try getTask()
        tasks.append(task)
        let data = try JSONEncoder.init().encode(tasks)
        UserDefaults.standard.set(data, forKey: "tasks")
    }
}
