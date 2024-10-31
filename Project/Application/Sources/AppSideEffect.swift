import Foundation
import LinkNavigator
import Domain
import Platform

struct AppSideEffect: DependencyType {
  let testUseCase: TestUseCase
}

extension AppSideEffect {
  static func generate() -> AppSideEffect {
    .init(testUseCase: TestUseCasePlatform())
  }
}
