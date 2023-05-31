//
//  TaskModel.swift
//  TodoList
//
//  Created by GiaBao on 28/03/2023.
//

import Foundation

class TaskModel: Codable{
    var taskName: String
    var taskDescription: String
    
    init(taskName: String, taskDescription: String){
        self.taskName = taskName
        self.taskDescription = taskDescription
    }
}
