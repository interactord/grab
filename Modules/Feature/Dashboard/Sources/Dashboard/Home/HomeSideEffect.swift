import Foundation
import LinkNavigator
import Domain
import Architecture

struct HomeSideEffect {
  let useCaseGroup: DashboardSideEffect
  let navigator: RootNavigatorType
}

extension HomeSideEffect {
  var fire: () async throws -> TestEntity {
    useCaseGroup.testUseCase.fire
  }

  var routeToNext: () -> Void {
    {
      navigator.next(linkItem: .init(path: "login", items: .none), isAnimated: true)
    }
  }
}
