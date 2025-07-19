import SwiftUI

struct NameInputView: View {
    @StateObject private var viewModel = UserInputViewModel()

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Welcome to MyApp")
                    .font(.title)
                    .padding(.top)

                TextField("Enter your name", text: $viewModel.userName)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)

                if viewModel.showValidationMessage && !viewModel.isValid {
                    Text("Please enter your name")
                        .foregroundColor(.red)
                        .font(.footnote)
                }

                Button("Submit") {
                    viewModel.submit()
                }
                .disabled(!viewModel.isValid)
                .padding()
                .background(viewModel.isValid ? Color.blue : Color.gray)
                .foregroundColor(.white)
                .cornerRadius(8)

                Spacer()
            }
            .frame(maxHeight: .infinity)
            .padding()
            .navigationDestination(isPresented: $viewModel.isSubmitted) {
                WelcomeView(userName: viewModel.userName)
            }
        }
    }
}
