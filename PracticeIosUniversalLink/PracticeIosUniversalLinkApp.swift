//
//  PracticeIosUniversalLinkApp.swift
//  PracticeIosUniversalLink
//
//  Created by arata.haruyama on 2025/06/11.
//

import SwiftUI

@main
struct PracticeIosUniversalLinkApp: App {
    @State private var receivedURL: URL?

    var body: some Scene {
        WindowGroup {
            ContentView(receivedURL: $receivedURL)
                .onOpenURL { url in
                    print("Received URL: \(url)")
                    receivedURL = url
                }
        }
    }
}
