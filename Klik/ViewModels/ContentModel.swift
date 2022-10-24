//
//  ContentModel.swift
//  Klik
//
//  Created by Rostislav Brož on 1/25/22.
//

import Foundation
import SwiftUI

class ContentModel: ObservableObject {
    
    // State variables
    @Published var isLongPressing = false
    
    // User defaults
    @AppStorage("displayedNumber") var count: Int = 0
    @AppStorage("fontSize") var textSize: Int = 1 // the greater the number the smaller the text (division)
    @AppStorage("guideStatus") var guideShown: Bool = false
    
    // Check if the guide has been shown, if so, don't show it again
    func changeGuideStatus() {
        
        guideShown = true
        
    }

    // Adapt text size to the value of the number displayed
    func checkTextSize() {

        if count < 10 {
            
            textSize = 1
            
        } else {
            
            // Assign logarithm value of count (only if Int) to text size
            textSize = Int(log(Double(count)) / log(10.0))
            
        }
        
    }
    
}
