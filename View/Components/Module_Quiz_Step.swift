//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/13.
//

import SwiftUI

//enum QuizState {
//    case correct
//    case incorrect
//    case yet
//}

struct Module_Quiz_Step: View {
    let step: Int
    let currentState: QuizState
    
    var body: some View {
        VStack {
            switch currentState {
            case .correct:
                VStack {
                    Text("\(step)")
                        .foregroundColor(ColorHelper.white)
                        .font(CFont.getFont(size: 15, weight: .Bold))
                        
                }
                .frame(width: 60, height: 30)
                .padding(3)
                .background(ColorHelper.teal)
                    
            case .current:
                VStack {
                    Text("\(step)")
                        .foregroundColor(ColorHelper.black)
                        .font(CFont.getFont(size: 15, weight: .Bold))
                }
                .frame(width: 60, height: 30)
                .padding(3)
                .background(ColorHelper.white)
                
            case .yet:
                VStack {
                    Text("\(step)")
                        .foregroundColor(ColorHelper.gray_dark)
                        .font(CFont.getFont(size: 15, weight: .Bold))
                }
                .frame(width: 60, height: 30)
                .padding(3)
                .background(ColorHelper.white)
                
            case .incorrect:
                VStack {
                    Text("\(step)")
                        .foregroundColor(ColorHelper.white)
                        .font(CFont.getFont(size: 15, weight: .Bold))
                }
                .frame(width: 60, height: 30)
                .padding(3)
                .background(ColorHelper.orange)
            }
        }
        .cornerRadius(10)
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
    }
}

struct Module_Quiz_Step_Previews: PreviewProvider {
    static var previews: some View {
        Module_Quiz_Step(step: 1, currentState: .current)
    }
}
