import Foundation
import LinkNavigator

@MainActor
final class AppContainer {

  let linkNavigator: SingleLinkNavigator

  init(dependency: AppSideEffect = AppSideEffect.generate()) {
    let builder = AppRouterBuilderGroup<SingleLinkNavigator>()
    linkNavigator = .init(
      routeBuilderItemList: builder.applicationBuilders(),
      dependency: dependency)
  }
}
