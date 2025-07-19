import SwiftUI

struct ContentView: View {
    @State private var userName: String? = nil

    var body: some View {
        NavigationStack {
            if let name = userName {
                WelcomeView(userName: name)
            } else {
                NameInputView(userName: $userName)
            }
        }
    }
}
