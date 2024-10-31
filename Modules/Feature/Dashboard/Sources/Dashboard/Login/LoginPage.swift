import ComposableArchitecture
import SwiftUI
import Foundation

struct LoginPage {

  @Bindable private var store: StoreOf<LoginReducer>

  init(store: StoreOf<LoginReducer>) {
    self.store = store
  }
}

extension LoginPage {

}

extension LoginPage: View {
  var body: some View {
    VStack {
      Spacer()
      HStack {
        Spacer()
        Text("Login")
        Button(action: { store.send(.onTapBack)}) {
          Text("Back")
        }
        Spacer()
      }
      Spacer()
    }
  }
}
