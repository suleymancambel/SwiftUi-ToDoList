//
//  ToDoListViewViewModel.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import Foundation
import FirebaseFirestore

class ToDoListViewViewModel: ObservableObject {
    
    @Published var showNewItemView = false
    
    private let userId: String
    init (userId: String){
        self.userId = userId
    }
    
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
    
}
