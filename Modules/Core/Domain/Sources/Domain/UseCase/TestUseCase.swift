import Foundation

public protocol TestUseCase {
  var fire: () async -> TestEntity { get }
}
