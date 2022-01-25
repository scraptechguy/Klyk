//
//  HomeView.swift
//  Klik
//
//  Created by Rostislav Brož on 1/25/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Button(action: {},
                   label: {
                        Rectangle()
                            .fill()
            }).ignoresSafeArea()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
