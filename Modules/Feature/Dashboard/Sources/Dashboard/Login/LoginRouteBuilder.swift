import Architecture
import Foundation
import ComposableArchitecture
import SwiftUI
import LinkNavigator

struct LoginRouteBuilder<RootNavigator: RootNavigatorType> {

  @MainActor
  static func generate() -> RouteBuilderOf<RootNavigator>{
    let matchPath = "login"

    return .init(matchPath: matchPath) { navigator, Item, diContainer -> RouteViewController? in
      guard let env: DashboardSideEffect = diContainer.resolve() else { return .none }

      return WrappingController(matchPath: matchPath) {
        LoginPage(store: .init(
          initialState: LoginReducer.State(),
          reducer: {
            LoginReducer(sideEffect: .init(useCaseGroup: env, navigator: navigator))
          }))
      }
    }
  }
}
