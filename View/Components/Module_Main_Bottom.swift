//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Module_Main_Bottom: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Do you want to test your korean typography skill?")
                    .multilineTextAlignment(.leading)
                    .font(CFont.getFont(size: 22, weight: .Regular))

                Spacer().frame(height: 10)
                Text("Try Quiz!")
                    .multilineTextAlignment(.leading)
                    .font(CFont.getFont(size: 25, weight: .Bold))
                    .foregroundColor(ColorHelper.orange)
            }
            .offset(x:0, y:20)
            .lineSpacing(3)
            .zIndex(1)
            
            Spacer()
            

            Image("main_try_quiz")
                .resizable()
                .frame(width: 241, height: 128)
                .offset(x:30,y:10)
            NavigationLink(destination: Quiz_Intro()) {
                Button_Large(text: "Next", color_text: ColorHelper.white, color_bg: ColorHelper.orange)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: 300, alignment: .leading)
        .background(ColorHelper.white)
        .foregroundColor(ColorHelper.black)
        .font(.system(size: 20,weight: .bold))
        .cornerRadius(CGFloat(20))
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
    }
}

struct Module_Main_Bottom_Previews: PreviewProvider {
    static var previews: some View {
        Module_Main_Bottom()
    }
}
