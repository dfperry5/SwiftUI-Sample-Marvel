import Foundation

public extension MarvelService {
  struct Models {
  }
}


public extension MarvelService.Models {
  struct MarvelImage: Codable {
    public let path: String
    public let imageExtension: String
    enum CodingKeys: String, CodingKey {
        case path
        case imageExtension = "extension"
    }
  }

  struct Character: Codable {
    public let id: Int
    public let name: String
    public let description: String
    public let thumbnail: MarvelImage
  }

  struct CharacterDataContainer: Codable {
    public let offset: Int
    public let limit: Int
    public let total: Int
    public let count: Int
    public let results: [Character]

  }

  struct CharacterDataWrapper: Codable {
    public let code: Int
    public let status: String
    public let data: CharacterDataContainer
  }
}
