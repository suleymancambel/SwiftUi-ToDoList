//
//  RegisterView.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import SwiftUI

struct RegisterView: View {
   
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        HeaderView(title: "Register", subTitle: "To Do List", angle: -15, backroundColor: .blue)
        
        Form {
            
            TextField("Name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()

            TextField("Surname", text: $viewModel.surname)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()

            TextField("Email", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            AuthButton(title: "Register", buttonColor: .green) {
                viewModel.register()
                    }
            
        }
        .offset(y: -50)
        
        Spacer()
    }
        
}

#Preview {
    RegisterView()
}
