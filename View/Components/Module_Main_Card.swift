//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Module_Main_Card: View {
    let fontData: FontData
    var body: some View {
        VStack {
            VStack {
                Spacer()
                Group {
                    Image(fontData.mainName)
                    Text("\(fontData.name) font")
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorHelper.gray_dark)
                        .font(CFont.getFont(size: 20, weight: .Medium))
                }
                
                Spacer()
                Divider()
                Spacer().frame(height: 15)
                Image(fontData.subName)
                    
                Spacer().frame(height: 10)
                Text(fontData.subDescription)
                    .frame(width: 360)
                    .multilineTextAlignment(.center)
                    .font(CFont.getFont(size: 16, weight: .Medium))
                    .foregroundColor(ColorHelper.gray_dark)
                Spacer().frame(height: 10)
            }
            Spacer()
            
            HStack {
                Tag_Font(tag_name: "# \(fontData.tags[0])")
                Tag_Font(tag_name: "# \(fontData.tags[1])")
            }
            Spacer().frame(height: 10)
            
        }
        .padding()
        .frame(width: 350, height: 330,alignment: .center)
        .background(ColorHelper.white)
        .foregroundColor(ColorHelper.black)
        .font(.system(size: 20,weight: .bold))
        .cornerRadius(CGFloat(20))
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
    }
}

struct Module_Main_Card_Previews: PreviewProvider {
    static var previews: some View {
        Module_Main_Card(fontData: FontData(name: "EF_watermelonSalad", id: 1, mainName: "fontMain1", subName: "fontSub1", subDescription: "Hello my name is dohyeon", tags: [.Trust, .Personal]))
    }
}
