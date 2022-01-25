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
    
    
    // VARIABLES
    
    @Published var count = 0
    @Published var textSize:CGFloat = 2 // the greater the number the smaller the text (division)
    
    func checkTextSize() {
        if count > 99 {
            textSize = 2.5
        }
        
        if count > 999 {
            textSize = 3.5
        }
    }
}
