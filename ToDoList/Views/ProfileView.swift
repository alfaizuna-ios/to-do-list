//
//  ProfileView.swift
//  ToDoList
//
//  Created by alfaizuna-ios on 08/10/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                
            }.navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
