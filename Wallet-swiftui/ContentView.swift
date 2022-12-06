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
    @State private var snappedItem = 0.0
    @State private var draggingItem = 0.0
    @State private var cards = Array<Card>(repeating: Card.example, count: 5)
    
    var body: some View {

        ZStack {
            TitleView()
            VStack {
                ZStack {
                    ForEach(0..<cards.count, id: \.self) { index in
                        ZStack {
                            VStack {
                                CardView(card: cards[index])
                                Text("Current index: \(index)")
                                Text("Distance: \(distance(index))")
                            }
                        }
                        .scaleEffect(1.0 - abs(distance(index)) * 0.5)
                        .opacity(1.0 - abs(distance(index)) * 0.6)
                        .offset(x: xOffset(index), y:0)
                        .zIndex(1.0 - abs(distance(index)) * 0.1)
                    }
                }
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            draggingItem = snappedItem + value.translation.width / 100
                        }
                        .onEnded { value in
                            withAnimation {
                                draggingItem = snappedItem + value.predictedEndTranslation.width / 100
                                draggingItem = round(draggingItem).remainder(dividingBy: Double(cards.count))
                                snappedItem = draggingItem
                            }
                        }
                )
                .padding(.top, 50)

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
    
    func distance(_ item: Int) -> Double {
        return (draggingItem - Double(item)).remainder(dividingBy: Double(cards.count))
    }
    
    func xOffset(_ item: Int) -> Double {
        let angle = Double.pi / (Double(cards.count)) * distance(item)
        return sin(angle) * 200
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
