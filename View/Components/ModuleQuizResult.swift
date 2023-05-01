//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/18.
//

import SwiftUI

struct ModuleQuizResult: View {
    var quizNum: Int
    @State var quizModel = QuizModel.instance
    @State var reasonImage = "q1Option1"
    @Binding var quizResultBefore: Bool

    var body: some View {
        VStack {
            VStack {
                Spacer().frame(height: 20)
                Text("Incorrect")
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorHelper.orange)
                    .font(CFont.getFont(size: 30, weight: .Bold))
                    .lineSpacing(6)
                Spacer().frame(height: 20)
                Divider()
                Spacer().frame(height: 20)
            
                Text("Answer")
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorHelper.gray_dark)
                    .font(CFont.getFont(size: 22, weight: .Medium))
                    .lineSpacing(6)
                Image("q\(quizNum + 1)Option\(1)")
                Spacer().frame(height: 30)
                Group {
                    Text("\(QuizModel.instance.quizList[quizNum].wrongReason)")
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorHelper.black)
                        .font(CFont.getFont(size: 22, weight: .Medium))
                        .lineSpacing(6)
                }
                .padding()
                
                
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight:  500, alignment: .center)
            .background(ColorHelper.white)
            .cornerRadius(CGFloat(20))
            .padding()
            
            ButtonLarge(text: "OK", color_text: ColorHelper.orange, color_bg: ColorHelper.white)
                .padding()
                .onTapGesture {
                    quizResultBefore = true
                }
            
        }
        .frame(maxWidth: .infinity, maxHeight:  .infinity, alignment: .leading)
        .background(ColorHelper.black_opacity)
        .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
    }
}

//struct ModuleQuizResult_Previews: PreviewProvider {
//    static var previews: some View {
//        ModuleQuizResult(quizNum: 1)
//    }
//}
