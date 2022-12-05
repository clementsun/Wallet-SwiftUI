//
//  ContentView.swift
//  Wallet-swiftui
//
//  Created by Clement Sun on 16/11/2022.
//

import SwiftUI

extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.offset(x:0, y: -offset * 40)
    }
    func rotated(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.rotationEffect(Angle.degrees(Double(offset * 5 - 5)))
    }
    func scaled(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.scaleEffect(1 - 0.1 * offset)
    }
}

struct ContentView: View {
    @State var show = false
    @State var viewState = CGSize.zero
    @State var showCard = false
    @State private var cards = Array<Card>(repeating: Card.example, count: 5)
    
    var body: some View {

        ZStack {
            TitleView()
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<cards.count, id: \.self) { index in
                            CardView(card: cards[index])
                        }
                    }
                }
                .padding(.top, 60)
                CardInfoView(card: Card.example)
                Spacer()
                CardBarcodeView()
                    .padding(.top, 15)
                    .padding(.bottom, 10)
                    .padding(.horizontal, 15)
            }
            
        }
        .background(Color.gray.opacity(0.2))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
