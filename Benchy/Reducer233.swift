    import ComposableArchitecture
    import SwiftUI


    @Reducer
    struct Counter233 {
      struct State: Equatable {
        var count = 0
          @PresentationState var childState: OptionalBasics233.State?
      }

      enum Action {
        case decrementButtonTapped
        case incrementButtonTapped
          case childAction(PresentationAction<OptionalBasics233.Action>)
      }

      var body: some Reducer<State, Action> {
        Reduce { state, action in
          switch action {
          case .decrementButtonTapped:
            state.count -= 1
            return .none
          case .incrementButtonTapped:
            state.count += 1
            return .none
          case .childAction:
              return .none
          }
        }
      }
    }

    @Reducer
    struct OptionalBasics233 {
      struct State: Equatable {
        var optionalCounter: Counter.State?
      }

      enum Action {
        case optionalCounter(Counter.Action)
        case toggleCounterButtonTapped
      }

      var body: some Reducer<State, Action> {
        Reduce { state, action in
          switch action {
          case .toggleCounterButtonTapped:
            state.optionalCounter =
              state.optionalCounter == nil
              ? Counter.State()
              : nil
            return .none
          case .optionalCounter:
            return .none
          }
        }
        .ifLet(\.optionalCounter, action: \.optionalCounter) {
          Counter()
        }
      }
    }