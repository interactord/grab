import Architecture
import LinkNavigator
import Dashboard

struct AppRouterBuilderGroup<RootNavigator: RootNavigatorType> {
  @MainActor
  public func applicationBuilders() -> [RouteBuilderOf<RootNavigator>] {
    DashboardRouteBuilderGroup().release()
  }
}
