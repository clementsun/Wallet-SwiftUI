//
//  CardBarcodeView.swift
//  Wallet-swiftui
//
//  Created by Clement Sun on 05/12/2022.
//

import SwiftUI

struct CardBarcodeView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("This is some sample text about the information of the selected card.")
                .multilineTextAlignment(TextAlignment.center)
                .font(Font.subheadline)
                .lineSpacing(6)
            Spacer()
        }
        .padding(Edge.Set.top, 8)
        .padding(Edge.Set.horizontal, 20)
        .background(Color.white)
        .cornerRadius(20)
        
    }
}

struct CardBarcodeView_Previews: PreviewProvider {
    static var previews: some View {
        CardBarcodeView()
    }
}
