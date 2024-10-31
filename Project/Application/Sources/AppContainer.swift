import Foundation
import LinkNavigator

final class AppContainer {

  let linkNavigator: SingleLinkNavigator

  init(dependency: AppSideEffect = AppSideEffect.generate()) {
    linkNavigator = .init(
      routeBuilderItemList: [],
      dependency: dependency)
  }
}
