# user-input-mvp

## App Bio

HealthApp is a beginner-friendly iOS application built with Swift and SwiftUI. The project started as a simple MVP (Minimum Viable Product) to help users enter their name and receive a personalized welcome message. HealthApp is designed as a learning journey in both Swift development and AI-assisted coding, with a vision to grow into a comprehensive health and wellness platform. The codebase emphasizes modularity, scalability, and clean architecture, making it easy to expand and maintain as new features are added.

## MVP Userflow: 
1. User is provided a screen where they can enter their name. 
2. User types their name into the provided field
3. User selects the CTA "Submit" 
4. The User is guided to a new screen where they're greeted 
```"Welcome {Username}! Thank you for choosing {App name}.```
-> username: the name provided by the user on the first screen
-> App name: the official name for this application

## Lessons Learnt

### Sweetpad

I found myself getting frustrated having to develop in Cursor, which gave me access to the AI agent, only to have XCode refuse to acknowledge / access the updates made within Cursor. 

So my husband found a solution -> Sweetpad. 
For more information, you can view this really informative page within Cursor's documents: https://docs.cursor.com/guides/languages/swift 

#### Downloading for Sweetpad

Downloading Sweetpad was... a bit challenging. I followed the steps provided, within the above Cursor document, from within the terminal.
1. Make sure you've got homebrew installed
```brew --version```
If your mac tells you that you don't have brew installed (like mine did), then you can install it:
```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```

2. Install xcode-build-server
```# Builds your projects without needing Xcode open```
```brew install xcode-build-server```

3. Install xcbeautify
```# Pretty print's the `xcodebuild` command output into Cursor's terminal```
```brew install xcbeautify```

4. Install swiftformat
```# Allows for advanced formating and language features```
```brew install swiftformat```

#### Setting up for Sweetpad

I hit problems when I tried to run the "Sweetpad: Generate Build Server Config" command, from within Cursor, it didn't recognise any of the files (or even brew), which I had installed. 

This was when I realised that brew stores its files outside the scope that Cursor can access. I had to export the brew files so that they'd be accessable for Cursor. 

As per AI: Why This Happens
PATH Issue:
The extension (Sweetpad) may not be able to find xcode-build-server because it’s not in the PATH that Cursor/VS Code sees.
Shell Environment:
GUI apps on macOS (like Cursor) sometimes have a different environment than your Terminal, so tools installed via Homebrew may not be visible to them.
Homebrew Location:
On Apple Silicon Macs, Homebrew installs binaries to /opt/homebrew/bin by default. On Intel Macs, it’s /usr/local/bin. If this path isn’t in the environment Cursor sees, it won’t find the tool.

To resolve this, AI guided me to add homebrew to the PATH for GUI apps. 
First step: check if my mac uses ~/.zprofile or ~/.bash_profile: 
```echo $SHELL```
-> "/bin/zsh" -> you are using zsh (the default on macOS Catalina and later)
-> "/bin/bash" -> you are using bash (the default on older macOS versions)

With this information, I could edit my profile file. With the file open, I added: 
```  export PATH="/opt/homebrew/bin:/usr/local/bin:$PATH"```
I saved the updated and closed the file. 

As per the AI's suggestion, I restarted my Pc but it didn't appear to have any effect, so I closed Cursor and reopened it via the terminal:
```open -a "Cursor"```
This worked. 

So lesson learnt: when the AI tells you to completely close and reopen Cursor, simply restarting your mac isn't sufficient. 

After re-opening my project, I ran the command "Sweetpad: Generate Build Server Config" once again, but this time I was successful! 
```"buildServer.json generated in workspace root" ```

## Resources

* Sweetpad: https://docs.cursor.com/guides/languages/swift