# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a SwiftUI-based iOS application created for practicing Universal Links implementation. The project uses modern iOS development practices with:
- SwiftUI framework
- iOS 18.1 deployment target
- Swift 5.0
- Xcode 16.1 project format

## Key Architecture

### Project Structure
- **PracticeIosUniversalLinkApp.swift**: Main app entry point using SwiftUI's `@main` attribute and `App` protocol
- **ContentView.swift**: Root view displaying the main UI
- **Assets.xcassets**: App resources including app icon and accent color

### Configuration Details
- Bundle ID: `com.linnefromice.PracticeIosUniversalLink`
- Supports both iPhone and iPad (universal app)
- Automatic code signing enabled
- SwiftUI previews enabled for development

## Development Commands

### Building and Running
```bash
# Build the project
xcodebuild -project PracticeIosUniversalLink.xcodeproj -scheme PracticeIosUniversalLink -configuration Debug build

# Run on simulator
xcrun simctl boot "iPhone 15 Pro" # or another available simulator
xcodebuild -project PracticeIosUniversalLink.xcodeproj -scheme PracticeIosUniversalLink -destination 'platform=iOS Simulator,name=iPhone 15 Pro' build

# Clean build folder
xcodebuild -project PracticeIosUniversalLink.xcodeproj -scheme PracticeIosUniversalLink clean
```

### Testing
```bash
# Run unit tests (when added)
xcodebuild test -project PracticeIosUniversalLink.xcodeproj -scheme PracticeIosUniversalLink -destination 'platform=iOS Simulator,name=iPhone 15 Pro'
```

## Universal Links Implementation Notes

To implement Universal Links in this project:

1. Add Associated Domains capability in project settings
2. Create/update entitlements file with domain configuration
3. Implement URL handling in PracticeIosUniversalLinkApp.swift using `.onOpenURL` modifier
4. Configure AASA (Apple App Site Association) file on the web server

The project currently contains only the basic SwiftUI template and needs the above additions to support Universal Links functionality.