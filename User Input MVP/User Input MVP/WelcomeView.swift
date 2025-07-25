import SwiftUI

struct WelcomeView: View {
    let userName: String
    let appName = "HealthApp"

    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome, \(userName)!")
                .font(.largeTitle)
                .bold()

            Text("Thank you for choosing \(appName).")
                .font(.title3)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}
