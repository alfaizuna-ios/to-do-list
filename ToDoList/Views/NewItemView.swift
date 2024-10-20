//
//  NewItemView.swift
//  ToDoList
//
//  Created by alfaizuna-ios on 08/10/24.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
            
            Form {
                TextField("Title", text: $viewModel.title)
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
            }
        }
    }
}

#Preview {
    NewItemView()
}
