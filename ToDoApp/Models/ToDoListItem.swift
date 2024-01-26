//
//  ToDoListItem.swift
//  ToDoApp
//
//  Created by Jacek Myjkowski on 25/01/2024.
//

import Foundation

struct ToDoListItem: Codable, Identifiable{
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool){
        isDone = state
    }
}
