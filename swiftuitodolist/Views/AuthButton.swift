//
//  Button.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 6.12.2023.
//

import SwiftUI


struct AuthButton: View {
    
    let title: String
    let buttonColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(buttonColor)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    AuthButton(title: "Value", buttonColor: .blue) {
        //
    }
}
