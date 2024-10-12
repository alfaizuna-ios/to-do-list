//
//  RegisterView.swift
//  ToDoList
//
//  Created by alfaizuna-ios on 08/10/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subTitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                SecureField("Password", text: $password).textFieldStyle(DefaultTextFieldStyle())
                TLButton(title: "Create Account", background: .green) {
                    // attemp registration
                }.padding()
            }.offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
