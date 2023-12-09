//
//  NewItemViewViewModel.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import Foundation

class NewItemViewViewModel: ObservableObject {
    
    @Published var title = ""
    @Published var deuDate = Date()
    @Published var showAlert = false
    
    init (){}
    
    func save() {
        
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard deuDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        return true
    }
    
}
