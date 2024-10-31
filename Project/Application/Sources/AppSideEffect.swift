import Foundation
import LinkNavigator
import Domain
import Platform
import Dashboard

struct AppSideEffect: DependencyType, DashboardSideEffect {
  let testUseCase: TestUseCase
}

extension AppSideEffect {
  static func generate() -> AppSideEffect {
    .init(testUseCase: TestUseCasePlatform())
  }
}
