//
//  ContentViewModel.swift
//  Wallet-swiftui
//
//  
//

import CoreImage

class ContentViewModel: ObservableObject {
  // 1
  @Published var frame: CGImage?
  // 2
  private let frameManager = FrameManager.shared

  init() {
      setupSubscriptions()
  }
  // 3
  func setupSubscriptions() {
      frameManager.$current
        // 2
        .receive(on: RunLoop.main)
        // 3
        .compactMap { buffer in
          return CGImage.create(from: buffer)
        }
        // 4
        .assign(to: &$frame)
  }
}
