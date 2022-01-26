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
        VStack {
            Spacer()
            
            Text("Tap to increase count, \nhold to reset")
                .foregroundColor(model.fontClr)
                .font(.system(size: model.screenSize.width / 12))
                .padding([.bottom], model.screenSize.width / 0.8)
            
            Spacer()
            
            Button(action: {model.changeGuideStatus()},
                   label: {
                        ZStack {
                            Rectangle()
                                .fill(model.fontClr)
                                .frame(width: model.screenSize.width / 1.2, height: model.screenSize.width / 8)
                                .cornerRadius(model.screenSize.width / 28)
                            
                            Text("Okay, bring it on!")
                                .foregroundColor(model.bg)
                                .font(.system(size: model.screenSize.width / 15))
                        }
            }).padding([.bottom], model.screenSize.width / 20)
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
            .environmentObject(ContentModel())
    }
}
