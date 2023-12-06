//
//  RegisterView.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var surname = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        HeaderView(title: "Register", subTitle: "To Do List", angle: -15, backroundColor: .blue)
        
        Form {
            
            TextField("Name", text: $name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()

            TextField("Surname", text: $surname)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()

            TextField("Email", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            
            SecureField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            AuthButton(title: "Register", buttonColor: .green) {
                //action
            }
            
        }
        .offset(y: -50)
        
        Spacer()
    }
        
}

#Preview {
    RegisterView()
}
