    import SwiftUI
    import ComposableArchitecture

    struct Content292View: View {
      let store: StoreOf<Counter292>

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
