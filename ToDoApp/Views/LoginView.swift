//
//  LoginView.swift
//  ToDoApp
//
//  Created by Jacek Myjkowski on 25/01/2024.
//



import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, backgroundColor: .pink)
                
                
                
                //Login Form
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", backgroundColor: .blue){
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y:-50)
                
                
                
                
                //Create Account
                
                Text("New here?")
                NavigationLink("Create An Account", destination: RegisterView())
                
                Spacer()
            }
            
            
            
        }
        
    }
}

#Preview {
    LoginView()
}
