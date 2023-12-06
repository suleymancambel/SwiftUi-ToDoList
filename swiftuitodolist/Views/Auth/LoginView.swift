//
//  LoginView.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "To Do List", subTitle: "Login", angle: 15, backroundColor: .orange)
                //loginform
                Form {
                    TextField("Email", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                    .padding()
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
