import Foundation
import LinkNavigator
import Domain
import Architecture

struct LoginSideEffect {
  let useCaseGroup: DashboardSideEffect
  let navigator: RootNavigatorType
}

extension LoginSideEffect {
  var fire: () async throws -> TestEntity {
    useCaseGroup.testUseCase.fire
  }

  var routeToBack: () -> Void {
    {
      navigator.back(isAnimated: true)
    }
  }
}
