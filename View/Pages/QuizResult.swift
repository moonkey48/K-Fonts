//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/13.
//

import SwiftUI

enum Level: Int {
    case bronze = 0
    case silver
    case gold
    case platinum
}

struct QuizResult: View {
    
    @State var pageNum: Int
    @State var quizResultBefore: Bool = false
    
    var result: Int
    var quizModel = QuizModel.instance
    var result_comment = [
        "New languages are difficult for everyone. Study a little bit more on the main page",
        "New languages are difficult for everyone. Study a little bit more on the main page",
        "It wasn't bad. study a little more!",
        "WOW! You have a great Korean typography skill!",
        "WOW! You have a great Korean typography skill!",
        "Perfect! You totally understand Korean typography!",
    ]
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Spacer().frame(height: 90)

                HStack {
                    ForEach(1..<6) { number in
                        ModuleQuizStep(
                            step: number,
                            currentState: quizModel.currentQuizState[number - 1]
                        )
                    }
                }
                
                Spacer().frame(height: 20)
                
                VStack {
                    Text("Score")
                        .multilineTextAlignment(.center)
                        .font(CFont.getFont(size: 26, weight: .Bold))
                        .foregroundColor(ColorHelper.gray_dark)
                    Spacer().frame(height: 10)
                    
                    Text("\(result) / 5")
                        .multilineTextAlignment(.center)
                        .font(CFont.getFont(size: 80, weight: .Bold))
                        .foregroundColor(result < 3 ? ColorHelper.orange : ColorHelper.teal)
                }
                .zIndex(1)
                .padding(30)
                .frame(maxWidth: .infinity, maxHeight: 210, alignment: .center)
                .background(ColorHelper.white)
                .foregroundColor(ColorHelper.black)
                .font(.system(size: 20,weight: .bold))
                .cornerRadius(CGFloat(20))
                
                Spacer().frame(height: 20)
                
                VStack {
                    VStack{
                        Text("\(result_comment[result])")
                            .multilineTextAlignment(.leading)
                            .font(CFont.getFont(size: 26, weight: .Bold))
                            .foregroundColor(ColorHelper.black)
                    }
                    .padding()
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
                    Spacer()
                    
                    Image("quiz_result")
                        .resizable()
                        .frame(width: 200 , height: 153)
                        .offset(x:40)
                }
                .zIndex(1)
                .frame(maxWidth: .infinity, maxHeight: 320, alignment: .center)
                .background(ColorHelper.white)
                .foregroundColor(ColorHelper.black)
                .font(.system(size: 20,weight: .bold))
                .cornerRadius(CGFloat(20))
                
                Spacer()
                
                HStack {
                    NavigationLink(destination: QuizIntro()) {
                        ButtonLarge(
                            text: "Try Again",
                            colorText: ColorHelper.white,
                            colorBg: ColorHelper.orange
                        )
                    }
                    NavigationLink(destination: MainPage()) {
                        ButtonLarge(
                            text: "Complete",
                            colorText: ColorHelper.white,
                            colorBg: ColorHelper.teal
                        )
                    }
                    
                }
                
                Spacer().frame(height: 25)
            }
            
            if quizResultBefore == false && pageNum != 0 {
                ModuleQuizResult(
                    quizNum: quizModel.randomQuizList[pageNum - 1],
                    quizResultBefore: $quizResultBefore
                )
            }
        }
        .padding()
        .background(ColorHelper.gray_light)
        .ignoresSafeArea()
        .onAppear {
            quizModel.lastScore = result
        }
        
    }
}

//struct QuizResult_Previews: PreviewProvider {
//    static var previews: some View {
//        QuizResult(result: 2)
//    }
//}
