//
//  ProfileView.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import SwiftUI

struct ProfileView: View {
    
    	@StateObject var viewmodel = ProfileViewViewModel()
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewmodel.user {
                    profile(user: user)
                   
                } else {
                    Text("Loading")
                }
                
                
                
                
            } 
            .navigationTitle("Profile")
        }
        .onAppear {
            viewmodel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        //image
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        //ınfo
        VStack(alignment: .leading) {
            HStack {
                Text("Name: ")
                    .bold()
                    .foregroundColor(.red)
                Text(user.name)
            }
            HStack {
                Text("Surname: ")
                    .bold()
                    .foregroundColor(.red)
                Text(user.surname)
            }
            HStack {
                Text("E-mail: ")
                    .bold()
                    .foregroundColor(.red)
                Text(user.email)
                    .foregroundColor(.black)
            }
            HStack {
                Text("Since: ")
                    .bold()
                    .foregroundColor(.red)
                Text("\(Date(timeIntervalSince1970: user.join).formatted(date: .abbreviated, time: .shortened))")
            }
        }
        
        
        //sign out
        Button(action: {
            viewmodel.logOut()
          }) {
              HStack {
                  Text("Log Out")
                  Spacer()
                  Button(action: {
                      viewmodel.logOut()
                  }) {
                      Circle()
                          .foregroundColor(Color.accentColor.opacity(0.2))
                          .frame(width: 28.0, height: 28.0)
                          .overlay(Image(systemName: "person"))
                  }
              }
              .padding()
              .accentColor(.white)
              .background(Color.accentColor)
              .clipShape(RoundedRectangle(cornerRadius: 14.0, style: .continuous))
          }
          .frame(maxWidth: 200.0)
          .padding()
    }
}

#Preview {
    ProfileView()
}
