//
//  GuideView.swift
//  Klik
//
//  Created by Rostislav Brož on 1/26/22.
//

import SwiftUI

struct GuideView: View {
    
    // Access data in ContentModel class
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        ZStack {
            Color("Background").opacity(0.5).ignoresSafeArea()
                .onTapGesture {
                    model.changeGuideStatus()
                }
            
            VStack {
                Spacer()
                
                Text("Tap to increase count \nHold to reset")
                    .foregroundColor(Color("Font"))
                    .font(.system(size: model.screenSize.width / 12))
                    .padding([.bottom], model.screenSize.width / 0.9)
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
            .environmentObject(ContentModel())
    }
}
