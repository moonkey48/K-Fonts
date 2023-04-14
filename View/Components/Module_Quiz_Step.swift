//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/13.
//

import SwiftUI

struct Module_Quiz_Step: View {
    let step: Int
    var isCurrent: Bool
    var isCorrect: Bool
    var body: some View {
        VStack {
            if isCorrect {
                Text("\(step)")
                    .foregroundColor(ColorHelper.white)
                    .background(ColorHelper.teal)
                    .font(.system(size: 15, weight: .bold))
            }
            else if isCurrent {
                Text("\(step)")
                    .foregroundColor(ColorHelper.black)
                    .font(.system(size: 15, weight: .bold))
            }
            else{
                Text("\(step)")
                    .foregroundColor(ColorHelper.gray_dark)
                    .font(.system(size: 15, weight: .bold))
            }
        }
        .frame(width: 22, height: 22)
        .padding(3)
        .background(ColorHelper.white)
        .cornerRadius(13)
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
        
    }
}

struct Module_Quiz_Step_Previews: PreviewProvider {
    static var previews: some View {
        Module_Quiz_Step(step: 1, isCurrent: false, isCorrect: false)
    }
}
