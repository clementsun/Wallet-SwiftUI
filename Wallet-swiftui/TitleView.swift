//
//  TitleView.swift
//  Wallet-swiftui
//
//  Created by Clement Sun on 01/12/2022.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("List of Cards")
                    .font(Font.largeTitle)
                    .fontWeight(.semibold)
                Spacer()
                Button("+") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .frame(width: 20, height: 20, alignment: Alignment.center)
                .foregroundColor(Color.white)
                .font(Font.subheadline)
                .fontWeight(Font.Weight.bold)
                .background(Color.black)
                .clipShape(Circle())
            }
            .padding()
            Image("background")
                .opacity(0.3)
                .offset(x:0, y:-40)
            Spacer()
            
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
