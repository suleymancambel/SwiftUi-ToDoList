//
//  HeaderView.swift
//  swiftuitodolist
//
//  Created by Süleyman Çambel on 6.12.2023.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subTitle:String
    let angle: Double
    let backroundColor: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .rotationEffect(Angle(degrees: angle))
                .foregroundColor(backroundColor)
              
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: 45))
                    .bold()
                Text(subTitle)
                    .font(.system(size: 25))
                    .foregroundColor(.white)
            }
            .padding(.top, 50)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "title", subTitle: "subtitle", angle: 15, backroundColor: .blue)
}
