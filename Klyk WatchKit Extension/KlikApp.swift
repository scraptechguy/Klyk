//
//  KlikApp.swift
//  Klyk WatchKit Extension
//
//  Created by Rostislav Brož on 10/24/22.
//

import SwiftUI

@main
struct KlikApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environmentObject(ContentModel())
            }
        }
    }
}
