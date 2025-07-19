import SwiftUI

struct NameInputView: View {
    @State private var name: String = ""
    @State private var isSubmitted: Bool = false

    var body: some View {
        if isSubmitted {
            WelcomeView(name: name)
        } else {
            VStack(spacing: 20) {
                Text("Please provide your name or nickname")
                    .font(.headline)

                TextField("Your name", text: $name)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)

                Button("Submit") {
                    isSubmitted = true
                }
                .disabled(name.isEmpty)
                .padding()
                .background(name.isEmpty ? Color.gray : Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
        }
    }
}
