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
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<cards.count, id: \.self) { index in
                        CardView(card: cards[index])
                    }
                }
            }
        }
        Spacer()
        
//        ZStack {
//            TitleView()
//                .blur(radius: show ? 20 : 0)
//                .opacity(showCard ? 0.4 : 1)
//                .offset(y: showCard ? -150 : 0)
//                .animation(
//                    .default
//                    .delay(0.1) , value: showCard
//                )
//
//            VStack {
//                ScrollView(.horizontal, showsIndicators: false) {
//                    HStack {
//                        ForEach(0..<cards.count, id: \.self) { index in
//                            CardView(card: cards[index])
//                                .scaleEffect(0.6)
//                            //                            .stacked(at: index, in: cards.count)
//                            //                            .rotated(at: index, in: cards.count)
//                            //                            .scaled(at: index, in: cards.count)
//                        }
//                    }
//                }
//            }
//
//            Spacer()
//
//            VStack {
//                CardView(card: Card.example)
//            }
//
//            BottomCardView()
//                .offset(x:0, y: showCard ? 360 : 1000)
//                .blur(radius: show ? 20 : 0)
//                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8), value: showCard)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
