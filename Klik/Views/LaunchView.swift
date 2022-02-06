//
//  LaunchView.swift
//  Klik
//
//  Created by Rostislav Brož on 1/26/22.
//

import SwiftUI

struct LaunchView: View {
    // Access data in ContentModel class
     
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        ZStack {
            HomeView()
            
            if !model.guideShown {
                GuideView()
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
            .environmentObject(ContentModel())
    }
}
