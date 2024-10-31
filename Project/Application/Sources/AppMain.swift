import SwiftUI
import LinkNavigator

@main
struct AppMain: App {

  @State var appContainer = AppContainer()

  var body: some Scene {
    WindowGroup {
      LinkNavigationView(
        linkNavigator: appContainer.linkNavigator,
        item: .init(path: "home", items: .none))
      .ignoresSafeArea()
    }
  }
}
