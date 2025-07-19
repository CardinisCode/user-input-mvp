import Foundation
import SwiftUI

class UserInputViewModel: ObservableObject {
    @Published var userName: String = ""
    @Published var showValidationMessage: Bool = false
    @Published var isSubmitted: Bool = false

    /// Computed property that checks if the name field is non-empty
    var isValid: Bool {
        !userName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }

    /// Attempts submission — only succeeds if name is valid
    func submit() {
        if isValid {
            isSubmitted = true
            showValidationMessage = false
        } else {
            showValidationMessage = true
        }
    }

    /// Resets submission and validation state (optional helper)
    func reset() {
        userName = ""
        isSubmitted = false
        showValidationMessage = false
    }
}
