
# 🧭 Project Guidelines for Cursor AI (SwiftUI iOS App Development)

## 📌 General Project Scope
- I’m building an iOS mobile app using **Swift** and **SwiftUI**.
- I want to begin with a **simple MVP**: a user enters their name, taps a button, and sees a welcome message on a new screen.
- I will **gradually add features** to the app, so code must be modular, scalable, and beginner-friendly.
- I am currently **using Cursor** as my development environment but will **transfer the code to Xcode** later to run and test the app.

## ✅ AI Coding Rules

### 🧱 Structure & Architecture
1. **Use SwiftUI idioms** — Stick to SwiftUI-native layout and navigation patterns (e.g. `NavigationStack`, `VStack`, `@State`, etc.).
2. **Split views into separate files** — For better readability and future scaling, each major screen or view should be its own SwiftUI struct and file.
3. **Keep logic minimal in Views** — Avoid overly complex business logic inside SwiftUI views. Prefer separating it into helper functions or models.
4. **Avoid external dependencies** — Only use Apple-native libraries for now (no packages like Alamofire or Firebase until explicitly requested).
5. **Use placeholder app name** — Default to `"MyApp"` unless I give a name.

### 🎯 MVP-Specific Behavior
1. The initial screen must:
   - Show a **TextField** for name input.
   - Include a **Button** labeled "Continue" or "Submit".
2. On tapping the button:
   - Transition to a new screen.
   - Display: `"Welcome {name}! Thank you for choosing {app name}."`
3. Use **`@State`** for storing the name input and tracking view transitions (e.g. `@State var isSubmitted = false`).

### 📐 UI Guidelines
1. Center content vertically and horizontally using `VStack`, `Spacer`, and/or `.frame(maxHeight: .infinity)` as needed.
2. Use SwiftUI styling modifiers:
   - `.padding()` for spacing
   - `.font(.title)` or `.headline` where appropriate
   - `.textFieldStyle(.roundedBorder)` for cleaner input
3. Avoid complex animations or interactions for now.
4. Ensure all text is readable, spacing is comfortable, and layout is beginner-friendly.

### 🔄 Navigation & State Management
1. If navigation is required, prefer **`NavigationStack` with `NavigationLink`** unless a simpler conditional view toggle is more appropriate.
2. Use **simple Booleans or optionals** (`@State var userName: String?`) to control conditional rendering.

### 🧪 Testing & Output
1. Assume the code will **not be run in Cursor**—so make sure all code is **Xcode compatible and buildable**, even if it can’t be tested yet.
2. Include **comments** where needed to explain:
   - What the code does
   - How to replace placeholder values
3. Avoid platform-specific preview tools (`#Preview`, `Canvas`, etc.), but do include `ContentView_Previews` if standard in SwiftUI.

### 🧠 Prompting & Communication Style
1. Assume I’m learning — explain suggestions briefly if introducing a new SwiftUI concept.
2. When providing new features, **ask for confirmation** before restructuring existing code.
3. Use **clean, consistent naming** for variables and views (e.g. `NameInputView`, `WelcomeView`, `userName`).

## 📂 Folder/File Structure Guide (Suggested by AI)

```
MyApp/
├── MyAppApp.swift          // Entry point
├── ContentView.swift       // Hosts navigation / logic
├── Views/
│   ├── NameInputView.swift
│   └── WelcomeView.swift
└── Models/
    └── User.swift (optional)
```
