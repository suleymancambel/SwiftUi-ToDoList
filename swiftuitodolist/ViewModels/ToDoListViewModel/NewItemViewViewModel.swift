//
//  NewItemViewViewModel.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class NewItemViewViewModel: ObservableObject {
    
    @Published var title = ""
    @Published var deuDate = Date()
    @Published var showAlert = false
    
    init (){}
    
    func save() {
        guard canSave else  {
            return
        }
        
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        let newId = UUID().uuidString
        let newItem = ToDoListItem(id: newId, title: title, dueDate: deuDate.timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document(newId)
            .setData(newItem.asDictionary())

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
