//
//  LoginViewViewModel.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""

    
    
    init() {}
    
    func login() {
        
        guard validate() else {
            return
        }
     
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
  private  func validate() -> Bool{
        
      guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
          
          errorMessage = "Please fill in all fields"
          
          return false
      }
      
      guard email.contains("@") && email.contains(".") else {
          errorMessage = "Lütfen geçerli bir mail adresi giriniz..!!!"
          return false
      }
      return true
    }
}
