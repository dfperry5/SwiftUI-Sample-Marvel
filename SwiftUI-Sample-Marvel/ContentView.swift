//
//  ContentView.swift
//  SwiftUI-Sample-Marvel
//
//  Created by Dylan Perry on 7/11/22.
//

import SwiftUI

struct ContentView: View {
  let service = MarvelService()
  
    var body: some View {
      VStack {
        Text("Hello, world!")
            .padding()
        
        Button {
          Task {
            await callAPI()
          }
        } label: {
          Text("Press Me")
        }

      }
    }
}

extension ContentView {
  func callAPI() async {
    guard let result = try? await service.getCharacters() else {
      print ("ERROR")
      return
    }
    print(result.data.results)
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
