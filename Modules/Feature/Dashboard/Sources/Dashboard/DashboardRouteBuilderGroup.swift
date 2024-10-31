import Architecture
import LinkNavigator

public struct DashboardRouteBuilderGroup<RootNavigator: RootNavigatorType> {
  public init() {}
}

extension DashboardRouteBuilderGroup {
  @MainActor
  public func release() -> [RouteBuilderOf<RootNavigator>] {
    [
      HomeRouteBuilder.generate(),
      LoginRouteBuilder.generate(),
    ]
  }
}
