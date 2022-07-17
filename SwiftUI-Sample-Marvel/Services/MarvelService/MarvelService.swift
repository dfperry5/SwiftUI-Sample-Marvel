//
//  MarvelService.swift
//  SwiftUI-Sample-Marvel
//
//  Created by Dylan Perry on 7/17/22.
//

import Foundation
import CryptoKit

public struct MarvelService {
  private func buildUrlString() -> String {
    let timeStamp =  Int64((Date().timeIntervalSince1970 * 1000.0).rounded())
    let hashString = timeStamp.description + Config.privateKey + Config.publicKey
    let hashValue = Insecure.MD5.hash(data: hashString.data(using: .utf8) ?? Data())
    let hash = hashValue.map { String(format: "%02hhx", $0) }.joined()
    
    return Config.URL + "?ts=\(timeStamp.description)&apikey=\(Config.publicKey)&hash=\(hash)"
  }
  
  public func getCharacters() async throws -> Models.CharacterDataWrapper {
    do {
      guard let url = URL(string: self.buildUrlString())
      else {
        fatalError("Missing URL")
      }
      let request = URLRequest(url: url)
      let (data, response) = try await URLSession.shared.data(for: request)
      guard (response as? HTTPURLResponse)?.statusCode == 200 else {
        fatalError("Error while fetching data")
      }
      let wrapper = try JSONDecoder().decode(Models.CharacterDataWrapper.self, from: data)
      return wrapper
    } catch {
      print("Error - ! \(error)")
      fatalError("Couldn't create response")
    }
  }
}
