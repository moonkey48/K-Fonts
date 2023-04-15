//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/11.
//

import SwiftUI

struct Button_Large: View {
    let text: String
    let color_text: Color
    let color_bg: Color
    
    var body: some View {
        
        Text(text)
            .padding()
            .foregroundColor(color_text)
            .frame(maxWidth: .infinity, alignment: .center)
            .frame(height: 60)
            .font(CFont.getFont(size: 20, weight: .Bold))
            .background(color_bg)
            .cornerRadius(CGFloat(20))
            .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
    }
}


struct Button_Large_Previews: PreviewProvider {
    static var previews: some View {
        Button_Large(text: "About Korean Typography",  color_text: ColorHelper.white, color_bg: ColorHelper.orange)
    }
}
