//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct ModuleMainScore: View {
    
    ///QuizModel에 저장된 데이터 가져오기
    var score: Int = QuizModel.instance.lastScore
    
    var body: some View {
        HStack(alignment: .center) {
            Text("K-Font Level")
                .multilineTextAlignment(.leading)
                .font(CFont.getFont(size: 22, weight: .Bold))
                
            Spacer()
            VStack(alignment: .trailing) {
                Text("\(score) / 5")
                    .font(CFont.getFont(size: 30, weight: .Bold))
                    .foregroundColor(ColorHelper.white)
                    .frame(width: 140, height: 80)
                    .background(score < 3 ? ColorHelper.orange : ColorHelper.teal)
            }
            .cornerRadius(20)
        }
        .padding(.leading)
        .foregroundColor(ColorHelper.orange)
        .frame(width: .infinity,height: 80)
        .background(ColorHelper.white)
        .cornerRadius(CGFloat(20))
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
        
    }
}

struct ModuleMainScore_Previews: PreviewProvider {
    static var previews: some View {
        ModuleMainScore()
    }
}
