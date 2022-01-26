//
//  ContentModel.swift
//  Klik
//
//  Created by Rostislav Brož on 1/25/22.
//

import Foundation
import SwiftUI

class ContentModel: ObservableObject {
    // SCREEN SIZE BOUNDS
    
    let screenSize: CGRect = UIScreen.main.bounds
    
    
    // UI COLORS
    
    @Published var bg = Color(red: 0.6016, green: 0.0234, blue: 0.4961)
    @Published var fontClr = Color(red: 1, green: 1, blue: 1)
    
    
    // STATE VARIABLES
    
    @Published var isLongPressing = false
    
    
    // USER DEFAULTS
    
    @AppStorage("displayedNumber") var count:Int = 0
    @AppStorage("fontSize") var textSize:Int = 1 // the greater the number the smaller the text (division)
    @AppStorage("guideStatus") var guideShown: Bool = false
    
    func changeGuideStatus() {
        guideShown = true
    }
    
    func checkTextSize() {
        if count < 100 {
            textSize = 1
        }
        
        if count > 99 {
            textSize = 2
        }
        
        if count > 999 {
            textSize = 3
        }
    }
}
