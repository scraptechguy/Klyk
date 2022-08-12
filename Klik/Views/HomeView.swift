//
//  HomeView.swift
//  Klik
//
//  Created by Rostislav Brož on 1/25/22.
//

import SwiftUI

struct HomeView: View {
    
    // Access data in ContentModel class
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        ZStack {
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
                                .font(.system(size: model.screenSize.width / CGFloat(0.75 * CGFloat(model.textSize) + 1.16666667)))
                            
                            if model.count == 69 {
                                
                                Text("Nice!")
                                    .foregroundColor(Color("Font"))
                                    .padding([.top], model.screenSize.width / 1.4)
                                
                            }
                        }
            }).ignoresSafeArea()
                .simultaneousGesture(LongPressGesture(minimumDuration: 1).onEnded { _ in
                    model.isLongPressing = true
                    
                    model.count = 0
                })
                .preferredColorScheme(.dark)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
