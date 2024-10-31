import Foundation

public struct TestEntity: Codable, Sendable {
  public let name: String

  public init(name: String) {
    self.name = name
  }
}
