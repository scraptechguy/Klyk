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
    
    @Published var bg = Color(red: 0.05, green: 0, blue: 0)
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
        
        if count > 9999 {
            textSize = 4
        }
        
        if count > 99999 {
            textSize = 5
        }
        
        if count > 999999 {
            textSize = 6
        }
        
        if count > 9999999 {
            textSize = 7
        }
        
        if count > 99999999 {
            textSize = 8
        }
        
        // if in count is just a 1 followed by 0 {
        //      textSize = log(count)
        // }
    }
}
