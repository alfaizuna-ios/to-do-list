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
                TextField("Fullname", text: $name).textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $email).textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password).textFieldStyle(DefaultTextFieldStyle())
            }.offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
