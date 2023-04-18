//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/16.
//

import SwiftUI

struct Module_Typo: View {
    let typoItem: TypoItem
    
    var body: some View {
        VStack {
            Spacer().frame(height: 30)
            Text(typoItem.title)
                .font(CFont.getFont(size: 24, weight: .Bold))
                
            Divider()
            
            Image(typoItem.imageName)
                .resizable()
                .frame(width: 340, height: 150)
            Spacer().frame(height: 25)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(ColorHelper.white)
        .cornerRadius(CGFloat(20))
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
        
        Spacer().frame(height: 10)
        
        VStack {
            Spacer().frame(height: 7)
            Text(typoItem.description)
                .font(CFont.getFont(size: 19,weight: .Medium))
                .lineSpacing(5)
            Spacer().frame(height: 7)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(20)
        .background(ColorHelper.white)
        .cornerRadius(CGFloat(20))
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
        
        Spacer().frame(height: 20)
        
        Spacer().frame(maxWidth: .infinity, maxHeight: 5)
            .background(ColorHelper.white_dark)
            .cornerRadius(5)
    }
}

//struct Module_Typo_Previews: PreviewProvider {
//    static var previews: some View {
//        Module_Typo()
//    }
//}
