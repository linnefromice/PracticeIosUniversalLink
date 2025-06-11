//
//  ContentView.swift
//  PracticeIosUniversalLink
//
//  Created by arata.haruyama on 2025/06/11.
//

import SwiftUI

struct ContentView: View {
    @Binding var receivedURL: URL?

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "link.circle.fill")
                .imageScale(.large)
                .font(.system(size: 60))
                .foregroundStyle(.tint)

            Text("Universal Links Demo")
                .font(.title)
                .fontWeight(.bold)

            if let url = receivedURL {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Received URL:")
                        .font(.headline)

                    Text(url.absoluteString)
                        .font(.system(.body, design: .monospaced))
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)

                    if let components = URLComponents(url: url, resolvingAgainstBaseURL: false) {
                        if let path = components.path.isEmpty ? nil : components.path {
                            Text("Path: \(path)")
                                .font(.caption)
                        }

                        if let queryItems = components.queryItems {
                            Text("Query Parameters:")
                                .font(.caption)
                                .fontWeight(.semibold)
                            ForEach(queryItems, id: \.name) { item in
                                Text("  \(item.name): \(item.value ?? "nil")")
                                    .font(.caption)
                            }
                        }
                    }
                }
                .padding()
                .background(Color.blue.opacity(0.05))
                .cornerRadius(12)
            } else {
                Text("No URL received yet")
                    .foregroundColor(.secondary)
                Text("Open a link to your domain to test")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(receivedURL: .constant(nil))
}
