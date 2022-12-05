//
//  TitleView.swift
//  Wallet-swiftui
//
//  Created by Clement Sun on 01/12/2022.
//

import SwiftUI

struct TitleView: View {
    @State private var offset = CGFloat.zero
    @State private var closeOffset = CGFloat.zero
    @State private var openOffset = CGFloat.zero
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                VStack {
                    HStack {
                        Button(action: {
                            self.offset = self.openOffset
                        }){
                            Image(systemName: "list.bullet")
                        }
                        Spacer()
                        Text("Your Card")
                        Spacer()
                    }
                    .padding(.horizontal, 10)
                    Spacer()
                }
                MenuView()
                    .background(Color.white.edgesIgnoringSafeArea(.bottom))
                    .frame(width: geometry.size.width * 0.7)
                    .offset(x: self.offset)
                    .onAppear(perform: {
                        self.offset = geometry.size.width * -1
                        self.closeOffset = self.offset
                        self.openOffset = CGFloat.zero
                    })
                    .animation(.default, value: self.offset)
            }
            .gesture(DragGesture(minimumDistance: 5)
                .onChanged{ value in
                    if (self.offset < self.openOffset) {
                        self.offset = self.closeOffset + value.translation.width
                    }
                }
                .onEnded { value in
                    if (value.location.x > value.startLocation.x) {
                        self.offset = self.openOffset
                    } else {
                        self.offset = self.closeOffset
                    }
                }
            )
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
