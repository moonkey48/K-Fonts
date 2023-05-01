//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct ModuleMainPopup: View {
    
    /// popup 이 false되어 있는 경우는 보여지지 않는다.
    @Binding var isPopup: Bool
    
    var body: some View {
        VStack {
            VStack {
                Spacer().frame(height: 20)
            
                Group {
                    Text("If Korean typography is not used well, it will be difficult to convey its meaning. I hope this app will help you understand Korean typography")
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorHelper.black)
                        .font(CFont.getFont(size: 22, weight: .Bold))
                        .lineSpacing(6)
                }
                .padding()
                
                Spacer()
                
                Image("main_popup")
                    .resizable()
                    .frame(width: 249, height: 194)
                    .offset(y:10)
               
                
                ButtonLarge(
                    text: "Start Quiz",
                    color_text: ColorHelper.white,
                    color_bg: ColorHelper.orange
                )
                    .onTapGesture {
                        isPopup = false
                    }
            }
            .frame(maxWidth: .infinity, maxHeight:  500, alignment: .leading)
            .background(ColorHelper.white)
            .cornerRadius(CGFloat(20))
            .padding()
            
            
        }
        .frame(maxWidth: .infinity, maxHeight:  .infinity, alignment: .leading)
        .background(ColorHelper.black_opacity)
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
    }
}

//struct Module_Main_Popup_Previews: PreviewProvider {
//    var isPopup: Bool = true
//    static var previews: some View {
//        ModuleMainPopup(isPopup: $isPopup)
//    }
//}
