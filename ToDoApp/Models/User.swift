//
//  User.swift
//  ToDoApp
//
//  Created by Jacek Myjkowski on 25/01/2024.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
