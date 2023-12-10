//
//  ProfileViewViewModel.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class ProfileViewViewModel: ObservableObject {
    init () {}
    
    //Modelfetch
    @Published var user: User?
    
    func fetchUser() {
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .getDocument{ [weak self ] snapshot, error in
                guard let data = snapshot?.data(), error == nil else {
                    return
                }
                DispatchQueue.main.async {
                    self?.user = User(id: data["id"] as? String ?? "",
                                      name: data["name"] as? String ?? "",
                                      surname: data["surname"] as? String ?? "",
                                      email: data["email"] as? String ?? "",
                                      join: data["joined"] as? TimeInterval ?? 5)
                }
            }
        
    }
    
    func logOut(){
        let auth = Auth.auth()
        do {
            try auth.signOut()
        } catch let signOutError as NSError {
            print("Error %@", signOutError)
        }
        
    }
}
