//
//  ToDoListItemViewViewModel.swift
//  ToDoApp
//
//  Created by Jacek Myjkowski on 25/01/2024.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

/// ViewModel for single item
/// EACH ROW of item list
class ToDoListItemViewViewModel: ObservableObject{
    
    
    
    init(){}
    
    func toggleIsDone(item: ToDoListItem){
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else{
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictionary())
    }
}
