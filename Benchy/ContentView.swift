import SwiftUI
import ComposableArchitecture

struct ContentView: View {
  let store: StoreOf<Counter>

  var body: some View {
    WithViewStore(self.store, observe: { $0 }) { viewStore in
      HStack {
        Button {
          viewStore.send(.decrementButtonTapped)
        } label: {
          Image(systemName: "minus")
        }

          Text("fdhhasdfhasdfhasdf")
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

