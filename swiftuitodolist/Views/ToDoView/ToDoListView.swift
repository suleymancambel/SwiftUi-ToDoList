//
//  ToDoListView.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import SwiftUI
import FirebaseFirestore


struct ToDoListView: View {
    @StateObject var viewmodel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
        
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos"
        )
        self._viewmodel = StateObject(
            wrappedValue: ToDoListViewViewModel(userId: userId )
        )
    }

    var body: some View {
        
        NavigationView {
            VStack {
                List(items) {item in
                   ToDoListItemView(item: item)
                        .swipeActions {
                            Button {
                                viewmodel.delete(id: item.id)
                            } label: {
                                Text("Delete")
                                    
                            }
                        } .tint(.red)
                }
                .listStyle(PlainListStyle())
                
            }
            .navigationTitle("To Do")
            .toolbar {
                Button {
                    viewmodel.showNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewmodel.showNewItemView)  {
                NewItemView(newItemPresented: $viewmodel.showNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "4YrabMjcGtTkhBaeegvtcykQF4j2")
}
