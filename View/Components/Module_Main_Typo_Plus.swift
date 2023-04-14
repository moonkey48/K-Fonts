//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Module_Main_Typo_Plus: View {
    var body: some View {
    
        HStack(alignment: .center) {
            Text("Korean Typography +")
                .multilineTextAlignment(.leading)
                .font(.system(size: 22, weight: .bold))
            Spacer()
            NavigationLink(destination: Typo_Plus()) {
                Image(systemName: "chevron.right")
                    .multilineTextAlignment(.trailing)
                    .font(.system(size: 25, weight: .bold))
            }
            
        }
        .padding()
        .foregroundColor(ColorHelper.teal)
        .frame(height: 80)
        .background(ColorHelper.white)
        .cornerRadius(CGFloat(20))
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
    }
}

struct Module_Main_Typo_Plus_Previews: PreviewProvider {
    static var previews: some View {
        Module_Main_Typo_Plus()
    }
}
