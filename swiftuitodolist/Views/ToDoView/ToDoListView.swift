//
//  ToDoListView.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import SwiftUI


struct ToDoListView: View {
    @StateObject var viewmodel = ToDoListViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }

    var body: some View {
        
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do")
            .toolbar {
                Button {
                    //act
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
