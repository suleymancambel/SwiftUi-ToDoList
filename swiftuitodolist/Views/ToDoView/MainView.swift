//
//  ContentView.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 4.12.2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        NavigationView {
            
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                
                ToDoListView()
                    
            } else {
                
                LoginView()
            }
            
        }
        .padding()
    }
}

#Preview {
    MainView()
}
