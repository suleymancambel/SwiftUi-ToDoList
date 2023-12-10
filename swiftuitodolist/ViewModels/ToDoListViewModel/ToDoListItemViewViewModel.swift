//
//  ToDoListItemViewViewModel.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore 


class ToDoListItemViewViewModel:  ObservableObject {
    init (){}
    
    func toogleIsDone(item: ToDoListItem) {
         var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictionary())
    }
}
