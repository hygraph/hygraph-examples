//
//  SwiftExampleApp.swift
//  with-swift-graphql
//
//  Created by Craig Tweedy on 28/12/2021.
//

import SwiftUI

@main
struct SwiftExampleApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            #if os(iOS)
            .navigationViewStyle(.stack)
            #endif
        }
    }
}

