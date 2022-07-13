//
//  SwiftUI_Sample_MarvelApp.swift
//  SwiftUI-Sample-Marvel
//
//  Created by Dylan Perry on 7/11/22.
//

import SwiftUI

@main
struct SwiftUI_Sample_MarvelApp: App {
  let backgroundGradient = LinearGradient(
      colors: [Color.purple, Color.green],
      startPoint: .top, endPoint: .bottom
  )
  
    var body: some Scene {
        WindowGroup {
          ZStack {
            backgroundGradient
            ContentView()
          }
        }
    }
}
