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
                        model.count += 1
                
                        model.checkTextSize()
                    },
                   label: {
                        ZStack {
                            Rectangle()
                                .fill(model.bg)
                            
                            Text(String(model.count))
                                .foregroundColor(model.fontClr)
                                .font(.system(size: model.screenSize.width / model.textSize))
                            
                            if model.count == 69 {
                                Text("Nice!")
                                    .foregroundColor(model.fontClr)
                                    .padding([.top], model.screenSize.width)
                            }
                        }
            }).ignoresSafeArea()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
