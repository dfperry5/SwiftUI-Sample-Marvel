//
//  ContentView.swift
//  SwiftUI-Sample-Marvel
//
//  Created by Dylan Perry on 7/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      Text("Hello, world!")
        .font(.title2)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        ContentView()
        ContentView()
          .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch) (5th generation)")
          )
        ContentView()
          .previewInterfaceOrientation(.landscapeLeft)
      }
    }
}
