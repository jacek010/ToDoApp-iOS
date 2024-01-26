//
//  NewItemView.swift
//  ToDoApp
//
//  Created by Jacek Myjkowski on 25/01/2024.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 50)
            
            Form{
                // Title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // Due date
                DatePicker("Due date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // Button
                TLButton(title: "Save", backgroundColor: .pink){
                    if viewModel.canSave{
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                    
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert){
                Alert(title: Text("Error"), message: Text("Please fill in all fields and select due date that is today or newer"))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get:{
        return true
    }, set:{ _ in
        
    }))
}
