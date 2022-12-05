//
//  TabBar.swift
//  Wallet-swiftui
//
//  Created by Clement Sun on 05/12/2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            ContentView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            SearchView().tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            SettingView().tabItem() {
                Image(systemName: "pencil.slash")
                Text("Setting")
            }
        }
        .toolbarBackground(Color.white, for: .tabBar)
        
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
