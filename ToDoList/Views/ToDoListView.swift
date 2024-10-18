//
//  ToDoListView.swift
//  ToDoList
//
//  Created by alfaizuna-ios on 08/10/24.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    
    init(userId: String){
        
    }
    
    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ToDoListView()
}
