//
//  BottomCardView.swift
//  Wallet-swiftui
//
//  Created by Clement Sun on 01/12/2022.
//

import SwiftUI

struct BottomCardView: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 40, height:5)
                .cornerRadius(4)
                .opacity(0.1)
            Text("This is some sample text about the information of the selected card.")
                .multilineTextAlignment(TextAlignment.center)
                .font(Font.subheadline)
                .lineSpacing(6)
            Spacer()
        }
        .padding(Edge.Set.top, 8)
        .padding(Edge.Set.horizontal, 20)
        .frame(maxWidth: CGFloat.infinity)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 20)
        
    }
}

struct BottomCardView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCardView()
    }
}
