//
//  ContentView.swift
//  User Input MVP
//
//  Created by Andrea van Onselen on 19/07/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var userName: String = ""
    @State private var isSubmitted: Bool = false

    var body: some View {
        NavigationStack {
            if isSubmitted {
                WelcomeView(userName: userName)
            } else {
                NameInputView(userName: $userName) {
                    isSubmitted = true
                }
            }
        }
    }
}