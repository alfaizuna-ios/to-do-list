//
//  RegisterView.swift
//  ToDoList
//
//  Created by alfaizuna-ios on 08/10/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subTitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Create Account", background: .green) {
                    viewModel.register()
                }.padding()
            }.offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
