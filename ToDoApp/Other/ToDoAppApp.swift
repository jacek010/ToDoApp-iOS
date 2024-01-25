//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Jacek Myjkowski on 25/01/2024.
//

import FirebaseCore

import SwiftUI
import Firebase

@main
struct ToDoAppApp: App {
    
    init(){
        let providerFactory = AppCheckDebugProviderFactory()
        AppCheck.setAppCheckProviderFactory(providerFactory)
        
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
