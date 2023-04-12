//
//  File.swift
//  
//
//  Created by Seungui Moon on 2023/04/11.
//

import SwiftUI

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

public struct ColorHelper {
    static let black = Color(hex: 0x2B2B2B)
    static let black_opacity = Color(hex: 0x000000, alpha: 0.4)
    static let gray_dark = Color(hex: 0xB6B6B6)
    static let gray_light = Color(hex: 0xD9D9D9)
    static let white_dark = Color(hex: 0xEDEDED)
    static let white = Color(hex: 0xFFFFFF)
    
    static let orange = Color(hex: 0xE76A12)
    static let orange_light = Color(hex: 0xFAC59F)
    
    static let teal = Color(hex: 0x5CA2B8)
}


