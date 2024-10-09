//
//  LoginView.swift
//  ToDoList
//
//  Created by alfaizuna-ios on 08/10/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
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
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                Button {
                    // attemp log in
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(Color.blue)
                        Text("Log in")
                            .foregroundStyle(Color.white)
                            .bold()
                    }
                }
            }
            // Craete Account
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
