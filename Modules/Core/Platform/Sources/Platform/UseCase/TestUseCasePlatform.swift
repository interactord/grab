import Foundation
import Domain

public struct TestUseCasePlatform {
  public init() {}
}

extension TestUseCasePlatform: TestUseCase {
  public var fire: () async -> TestEntity {
    {
      .init(name: "test")
    }
  }
}
