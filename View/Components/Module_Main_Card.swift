//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Module_Main_Card: View {
    var body: some View {
        VStack {
            Group {
                Spacer().frame(height: 20)
                Image("Intro_kor")
                    .resizable()
                    .frame(width: 161, height: 99)
                Text("GungSeo font")
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorHelper.gray_dark)
                    .font(.system(size: 20, weight: .medium))
                Spacer().frame(height: 15)
                Divider()
                Spacer().frame(height: 15)
                Image("fonts_ex_gungseo")
                    .resizable()
                    .frame(width: 247, height: 23)
                Spacer().frame(height: 10)
                Text("Hello, this is korean language")
                    .frame(width: 360)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(ColorHelper.gray_dark)
                Spacer().frame(height: 20)
            }
           
            Group {
                HStack {
                    Tag_Font(tag_name: "Old")
                    Tag_Font(tag_name: "Strong")
                }
            }
        }
        .padding()
        .frame(width: 340, height: 330,alignment: .top)
        .background(ColorHelper.white)
        .foregroundColor(ColorHelper.black)
        .font(.system(size: 20,weight: .bold))
        .cornerRadius(CGFloat(20))
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
    }
}

struct Module_Main_Card_Previews: PreviewProvider {
    static var previews: some View {
        Module_Main_Card()
    }
}
