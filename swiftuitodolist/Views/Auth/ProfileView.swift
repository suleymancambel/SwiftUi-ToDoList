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
                
            } 
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
