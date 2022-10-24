//
//  KlikApp.swift
//  Klyk WatchKit Extension
//
//  Created by Rostislav Brož on 10/24/22.
//

import SwiftUI

@main
struct KlikApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
