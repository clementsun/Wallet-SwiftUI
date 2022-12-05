//
//  CardView.swift
//  Wallet-swiftui
//
//  Created by Clement Sun on 01/12/2022.
//

import SwiftUI

struct CardView: View {
    let card: Card

    @State private var showCard = false

    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(card.title)
                        .font(.title)
                        .foregroundColor(Color.white)
                        .fontWeight(Font.Weight.semibold)
                        .foregroundColor(.black)
                    
                    if showCard {
                        Text(card.subtitle)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                .padding(.top, 10)
                .padding(.horizontal, 20)
                Spacer()
            }
            .frame(width: 238, height: 150)
            .background(Color.gray)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: RoundedCornerStyle.continuous))
            .shadow(radius: 10)
            .contentShape(Rectangle())
            .onTapGesture {
                showCard.toggle()
            }
        }

        
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card.example)
    }
}
