//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct ModuleMainTypoPlus: View {
    var body: some View {
    
        HStack(alignment: .center) {
            Text("Korean Typography +")
                .multilineTextAlignment(.leading)
                .font(CFont.getFont(size: 22, weight: .Bold))
            
            Spacer()
            NavigationLink(destination: TypoPlus()) {
                Image(systemName: "chevron.right")
                    .multilineTextAlignment(.trailing)
                    .font(CFont.getFont(size: 25, weight: .Bold))
            }
            
        }
        .padding()
        .foregroundColor(ColorHelper.teal)
        .frame(maxWidth: .infinity)
        .frame(height: 80)
        .background(ColorHelper.white)
        .cornerRadius(CGFloat(20))
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
    }
}

struct Module_Main_Typo_Plus_Previews: PreviewProvider {
    static var previews: some View {
        ModuleMainTypoPlus()
    }
}
