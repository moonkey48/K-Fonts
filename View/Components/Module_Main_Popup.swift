//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Module_Main_Popup: View {
    @Binding var isPopup: Bool
    var body: some View {
        VStack {
            VStack {
                Spacer().frame(height: 20)
            
                Group {
                    Text("If Korean typography is not used well, it will be difficult to convey its meaning. I hope this app will help you understand Korean typography")
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorHelper.black)
                        .font(.system(size: 22, weight: .bold))
                        .lineSpacing(6)
                }
                .padding()
                
                Spacer()
                
                Image("main_popup")
                    .resizable()
                    .frame(width: 249, height: 194)
                    .offset(y:10)
               
                
                Button_Large(text: "Start Quiz", color_text: ColorHelper.white, color_bg: ColorHelper.orange)
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
    }
}

//struct Module_Main_Popup_Previews: PreviewProvider {
//    var isPopup: Bool = true
//    static var previews: some View {
//        Module_Main_Popup(isPopup: $isPopup)
//    }
//}