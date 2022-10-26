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
        VStack {
            Button(action: {
                        if model.isLongPressing {
                            
                            model.isLongPressing.toggle()
                            
                        } else {
                            
                            model.count += 1
                            
                        }
                        
                        model.checkTextSize()
                    },
                   label: {
                        ZStack {
                            Rectangle()
                                .fill(Color("Background"))
                            
                            Text(String(model.count))
                                .foregroundColor(Color("Font"))
                                .font(.system(size: 200 / CGFloat(0.75 * CGFloat(model.textSize) + 1.16666667)))
                        }.frame(width: 500, height: 500)
            }).simultaneousGesture(LongPressGesture(minimumDuration: 1).onEnded { _ in
                    model.isLongPressing = true
                    
                    model.count = 0
                })
            .preferredColorScheme(.dark)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ContentModel())
    }
}
