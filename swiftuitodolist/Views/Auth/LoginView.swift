//
//  LoginView.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "To Do List", subTitle: "Login", angle: 15, backroundColor: .orange)
                //loginform
                Form {
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)

                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    AuthButton(title: "Log In", buttonColor: .blue) {
                        viewModel.login()
                    }
                }
                .offset(y: -40)
                
                // create account
                VStack {
                   NavigationLink("Create Account", destination: RegisterView())
                }
                .padding(.bottom,25)
                Spacer()
            }
        }
       
    }
}

#Preview {
    LoginView()
}
