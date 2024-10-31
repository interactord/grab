import ComposableArchitecture
import SwiftUI
import Foundation

struct HomePage {

  @Bindable private var store: StoreOf<HomeReducer>

  init(store: StoreOf<HomeReducer>) {
    self.store = store
  }
}

extension HomePage {

}

extension HomePage: View {
  var body: some View {
    VStack {
      Spacer()
      HStack {
        Spacer()
        Text("Hello, World!")
        Button(action: { store.send(.onTapNext) }) {
          Text("Touch Me!")
        }
        Spacer()
      }
      Spacer()
    }
  }
}
