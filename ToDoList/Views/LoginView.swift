//
//  LoginView.swift
//  ToDoList
//
//  Created by alfaizuna-ios on 08/10/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(
                title: "To Do List",
                subTitle: "Get things done",
                angle: 15,
                background: .pink
            )
            // Login Form
            Form {
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Log in", background: .blue) {
                    viewModel.login()
                }.padding()
            }.offset(y: -50)
            // Create Account
            VStack {
                Text("New around here?")
                NavigationLink("Create an account", destination: RegisterView())
            }.padding(.bottom, 50)
            
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
