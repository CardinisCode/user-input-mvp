import SwiftUI

struct NameInputView: View {
    @Binding var userName: String
    var onSubmit: () -> Void
    @State private var showValidationMessage = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to HealthApp")
                .font(.title)
                .padding(.top)

            TextField("Enter your name", text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
                .accessibilityIdentifier("Enter your name")

            if showValidationMessage && userName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                Text("Please enter your name")
                    .foregroundColor(.red)
                    .font(.footnote)
            }

            Button("Submit") {
                if userName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                    showValidationMessage = true
                } else {
                    showValidationMessage = false
                    onSubmit()
                }
            }
            .disabled(userName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
            .padding()
            .background(userName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? Color.gray : Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            .accessibilityIdentifier("Submit")

            Spacer()
        }
        .frame(maxHeight: .infinity)
        .padding()
    }
}
