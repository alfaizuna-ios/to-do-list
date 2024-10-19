//
//  NewItemViewViewModel.swift
//  ToDoList
//
//  Created by alfaizuna-ios on 08/10/24.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    @Published var title =  ""
    @Published var dueDate = Date()
    
    init(){
        
    }
}

