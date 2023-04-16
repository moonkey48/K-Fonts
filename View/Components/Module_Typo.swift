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
                .font(CFont.getFont(size: 24,weight: .Bold))
            Divider()
            
            Image(typoItem.imageName)
                .resizable()
                .frame(width: 340, height: 150)
            Spacer().frame(height: 25)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(ColorHelper.white)
        .cornerRadius(CGFloat(20))
        
        Spacer().frame(height: 10)
        
        VStack {
            Spacer().frame(height: 10)
            Text(typoItem.description)
                .font(CFont.getFont(size: 19,weight: .Medium))
                .lineSpacing(5)
            Spacer().frame(height: 10)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(10)
        .background(ColorHelper.white)
        .cornerRadius(CGFloat(20))
    }
}

//struct Module_Typo_Previews: PreviewProvider {
//    static var previews: some View {
//        Module_Typo()
//    }
//}
