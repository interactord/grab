import Architecture
import Foundation
import ComposableArchitecture
import SwiftUI
import LinkNavigator

struct HomeRouteBuilder<RootNavigator: RootNavigatorType> {

  @MainActor
  static func generate() -> RouteBuilderOf<RootNavigator>{
    let matchPath = "home"

    return .init(matchPath: matchPath) { navigator, Item, diContainer -> RouteViewController? in
      guard let env: DashboardSideEffect = diContainer.resolve() else { return .none }

      return WrappingController(matchPath: matchPath) {
        HomePage(store: .init(
          initialState: HomeReducer.State(),
          reducer: {
            HomeReducer(sideEffect: .init(useCaseGroup: env, navigator: navigator))
          }))
      }
    }
  }
}
