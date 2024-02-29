    import SwiftUI
    import ComposableArchitecture

    struct Content283View: View {
      let store: StoreOf<Counter283>

      var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
          HStack {
            Button {
              viewStore.send(.decrementButtonTapped)
            } label: {
              Image(systemName: "minus")
            }
              
            Text("\(viewStore.count)")
              .monospacedDigit()

            Button {
              viewStore.send(.incrementButtonTapped)
            } label: {
              Image(systemName: "plus")
            }
          }
        }
      }
    }
