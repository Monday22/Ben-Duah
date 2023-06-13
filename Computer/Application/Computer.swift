//
//  ComputerApp.swift
//  Computer
//
//  Created by Anthony Lartey on 02/04/2023.
//

import SwiftUI

@main
struct Computer: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                        
                    }
                GodView()
                    .tabItem {
                        Label("Amen", systemImage: "star.bubble")
                    }
                DreamView()
                    .tabItem {
                        Label("Dream's", systemImage: "message")
                    }
            }
        .accentColor(.blue)
        }
    }
}
