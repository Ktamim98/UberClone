//
//  Color.swift
//  UberClone
//
//  Created by Tamim Khan on 24/6/23.
//

import Foundation
import SwiftUI


extension Color {
    static let theme = ColorTheme()
}


struct ColorTheme{
    let backgroundColor = Color("Background")
    let secondaryBackgroundColor = Color("SecondaryBackground")
    let textColor = Color("TextColor")
}
