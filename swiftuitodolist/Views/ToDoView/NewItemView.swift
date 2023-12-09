//
//  NewItemView.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 5.12.2023.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 30))
                .bold()
                .padding(.top, 150)
            
            Form {
                //title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                //due date
                DatePicker("Date", selection: $viewModel.deuDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                //button
                AuthButton(title: "Save", buttonColor: .red) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Herkes Hata Yapabilir..!"),message: Text("Bütün Alanları Doldurunuz."))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
