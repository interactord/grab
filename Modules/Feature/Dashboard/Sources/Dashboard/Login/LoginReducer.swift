import Architecture
import ComposableArchitecture
import Foundation

@Reducer
struct LoginReducer {

  let sideEffect: LoginSideEffect

  public var body: some ReducerOf<Self> {
    BindingReducer()
    Reduce { state, action in
      switch action {
      case .binding:
        return .none
      case .teardown:
        return .concatenate(
          CancelID.allCases.map{ .cancel(pageID: state.id, id: $0) }
        )

      case .onTapBack:
        sideEffect.routeToBack()
        return .none

      case .throwError(let error):
        print(error)
        return .none
      }
    }
  }
}

extension LoginReducer {
  @ObservableState
  struct State: Equatable, Identifiable, Sendable {
    let id: UUID

    init(id: UUID = .init()) {
      self.id = id
    }
  }

  enum Action: Equatable, BindableAction, Sendable {
    case binding(BindingAction<State>)
    case teardown

    case onTapBack

    case throwError(String)
  }
}

extension LoginReducer {
  enum CancelID: Equatable, CaseIterable {
    case teardown
  }
}
