//
//  CameraView.swift
//  Wallet-swiftui
//
//  
//

import SwiftUI

struct CameraView: View {
    @StateObject private var model = ContentViewModel()
    
    var body: some View {
        FrameView(image: model.frame)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
