//
//  MenuView.swift
//  Wallet-swiftui
//
//  Created by Clement Sun on 05/12/2022.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            Divider()
            
            ScrollView(.vertical, showsIndicators: false) {
                HStack {
                    Image(systemName: "scribble")
                    Text("Sample menu label 1")
                }
                HStack {
                    Image(systemName: "scribble")
                    Text("Sample menu label 2")
                }
                HStack {
                    Image(systemName: "scribble")
                    Text("Sample menu label 3")
                }
            }
            
        }
        .padding(.horizontal, 20)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
