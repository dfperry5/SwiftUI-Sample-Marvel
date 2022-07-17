//
//  MarvelServiceConfig.swift
//  SwiftUI-Sample-Marvel
//
//  Created by Dylan Perry on 7/17/22.
//

import Foundation

public extension MarvelService {
  enum Config {
    public static let publicKey = "Public Key Here"
    public static let privateKey = "Private Key Here"
    public static let URL = "https://gateway.marvel.com:443/v1/public/characters"
  }
}
