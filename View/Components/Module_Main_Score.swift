//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Module_Main_Score: View {
    var score: Int = Quiz_Model.instance.lastScore
    var body: some View {
        HStack(alignment: .center) {
            Text("K-Font Level")
                .multilineTextAlignment(.leading)
                .font(.system(size: 22, weight: .bold))
            Spacer()
            VStack(alignment: .trailing) {
                Text("\(score) / 5")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(ColorHelper.white)
                    .frame(width: 140, height: 80)
                    .background(score < 3 ? ColorHelper.orange : ColorHelper.teal)
            }
            .cornerRadius(20)
            
                
        }
        .padding(.leading)
        .foregroundColor(ColorHelper.orange)
        .frame(height: 80)
        .background(ColorHelper.white)
        .cornerRadius(CGFloat(20))
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
    }
}

struct Module_Main_Score_Previews: PreviewProvider {
    static var previews: some View {
        Module_Main_Score()
    }
}
