//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/11.
//

import SwiftUI

struct ButtonLarge: View {
    
    ///  컬러, 배경컬러, 내부 텍스트에 대한 정보를 받아온다.
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


struct ButtonLarge_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLarge(
            text: "About Korean Typography",
            color_text: ColorHelper.white,
            color_bg: ColorHelper.orange
        )
    }
}
