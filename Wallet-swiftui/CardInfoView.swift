//
//  CardInfoView.swift
//  Wallet-swiftui
//
//  Created by Clement Sun on 05/12/2022.
//

import SwiftUI
import PassKit

struct CardInfoView: View {
    let card: Card
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(card.title)
                    .font(.subheadline)
                    .fontWeight(.bold)
                HStack {
                    Text(card.number)
                    Button(action: {
                        
                    }) {
                        Image(systemName: "doc.on.doc")
                            .foregroundColor(Color.green)
                    }
                }
                
            }
            Spacer()
            VStack {
                Button(action: {
                    
                }){
                    HStack {
                        Image(systemName: "wallet.pass")
                        VStack(alignment: .leading) {
                            Text("Add to")
                            Text("Apple Wallet")
                                .fontWeight(.semibold)
                        }
                    }
                    .padding(10)
                    
                }
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 2)
                )
            }
        }
        .padding(.leading, 20)
        .padding(.top, 20)
        .padding(.trailing, 20)
    }
}

struct CardInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CardInfoView(card: Card.example)
    }
}
