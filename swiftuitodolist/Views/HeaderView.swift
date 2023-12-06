//
//  HeaderView.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 6.12.2023.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .rotationEffect(Angle(degrees: 165))
                .foregroundColor(.blue)
              
            
            VStack {
                Text("To Do List")
                    .foregroundColor(.white)
                    .font(.system(size: 45))
                    .bold()
                Text("Planning")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 400)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
