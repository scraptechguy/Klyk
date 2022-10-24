//
//  ContentView.swift
//  Klyk WatchKit Extension
//
//  Created by Rostislav Brož on 10/24/22.
//

import SwiftUI

struct ContentView: View {
    
    // Access data in ContentModel class
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        Text("Hello, World!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ContentModel())
    }
}
