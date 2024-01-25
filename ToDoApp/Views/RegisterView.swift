//
//  RegisterView.swift
//  ToDoApp
//
//  Created by Jacek Myjkowski on 25/01/2024.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Register", subtitle: "Start organising ToDos", angle: -15, backgroundColor: .orange)
            
            
            //Registration
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TLButton(title: "Create Account", backgroundColor: .green){
                    //Attempt to register
                }
                
            }
            .offset(y: -50)
            
            Spacer()
        }
        
    }
}

#Preview {
    RegisterView()
}
