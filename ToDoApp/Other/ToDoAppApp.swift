//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Jacek Myjkowski on 25/01/2024.
//

import FirebaseCore

import SwiftUI

@main
struct ToDoAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
