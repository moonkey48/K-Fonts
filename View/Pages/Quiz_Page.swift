//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/13.
//

import SwiftUI

struct Quiz_Page: View {
    @State var pageNum: Int
    @State var quizData: QuizData
    @State var quizModel = Quiz_Model.instance
    @State var quizNum: Int = 1
    @State var isPopup = false
    @State var quizResultBefore: Bool = false
    @State var quizResultCurrent: Bool = false
    @State var selectedAnswer = 0
    @State var alert_text = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Spacer().frame(height: 90)
                
                HStack {
                    ForEach(1..<6) { number in
                        Module_Quiz_Step(step: number, currentState: pageNum + 1 == number ? .current : quizModel.currentQuizState[number - 1])
                    }
                }
                
                Spacer().frame(height: 20)
                
                VStack(alignment: .leading) {
                    Text("Quiz \(pageNum + 1)")
                        .multilineTextAlignment(.leading)
                        .font(CFont.getFont(size: 26, weight: .Bold))
                        .foregroundColor(ColorHelper.orange)
                    Spacer().frame(height: 10)
                    
                    Text("\(quizData.mainQ)")
                        .multilineTextAlignment(.leading)
                        .font(CFont.getFont(size: 20, weight: .Bold))
                    
                    Spacer().frame(height: 20)
                    
                    Text("\(quizData.subQ)")
                        .multilineTextAlignment(.leading)
                        .font(CFont.getFont(size: 18, weight: .Medium))
                        .foregroundColor(ColorHelper.gray_dark)
                    
                }
                .lineSpacing(3)
                .zIndex(1)
                .padding(30)
                .frame(maxWidth: .infinity, maxHeight: 270, alignment: .leading)
                .background(ColorHelper.white)
                .foregroundColor(ColorHelper.black)
                .font(.system(size: 20,weight: .bold))
                .cornerRadius(CGFloat(20))
                
                Spacer().frame(height: 25)
                
                VStack {
                    Button_Quiz(selectedAnswer: $selectedAnswer,buttonNum: 1, quizNum: quizNum)
                        .onTapGesture {
                            selectedAnswer = 1
                            quizResultCurrent = quizModel.checkAnswer(pageNum: pageNum, quizNum: quizData.id, selected:  selectedAnswer)
                        }
                    Spacer().frame(height: 10)
                    Button_Quiz(selectedAnswer: $selectedAnswer, buttonNum: 2, quizNum: quizNum)
                        .onTapGesture {
                            selectedAnswer = 2
                            quizResultCurrent = quizModel.checkAnswer(pageNum: pageNum, quizNum: quizData.id, selected:  selectedAnswer)
                        }
                }
                Spacer()
                Group {
                    Spacer().frame(height: 10)
                    ZStack {
                        
                        Text_Alert(alert: "Select button first")
                            .opacity(alert_text ? 1 : 0)
                        
                        if alert_text != true {
                            Text(quizResultBefore ? "Correct" : "")
                                .font(CFont.getFont(size: 24, weight: .Bold))
                                .foregroundColor(ColorHelper.orange)
                        }
                    }
                    Spacer().frame(height: 20)
                }
                
                if selectedAnswer != 0{
                    if pageNum == 4 {
                        NavigationLink(destination: Quiz_Result(result: quizModel.currentQuizState.filter{ $0 == .correct }.count) ){
                            Button_Large(text: "Next", color_text: ColorHelper.white, color_bg: ColorHelper.orange )
                        }
                    } else {
                        NavigationLink(destination: Quiz_Page(pageNum: pageNum + 1, quizData: quizModel.quizList[quizModel.randomQuizList[pageNum + 1]], quizResultBefore: quizResultCurrent) ){
                            Button_Large(text: "Next", color_text: ColorHelper.white, color_bg: ColorHelper.orange )
                        }
                    }
                    
                    
                    Spacer().frame(height: 10)
                } else {
                    
                    Button_Large(text: "Next", color_text: ColorHelper.white, color_bg: ColorHelper.orange_light )
                        .onTapGesture {
                            self.alert_text = true
                        }
                    Spacer().frame(height: 10)
                }
                    
                
            }
            .padding()
            .background(ColorHelper.gray_light)
            .ignoresSafeArea()

            
            
            if quizResultBefore == false && pageNum != 0 {
                Module_Quiz_Result(quizNum: quizModel.randomQuizList[pageNum - 1],quizResultBefore: $quizResultBefore)
            }
        }
        .onAppear {
            quizNum = quizModel.randomQuizList[self.pageNum]
            quizData = quizModel.quizList[quizNum]
        }
    }
}

//struct Quiz_Page_Previews: PreviewProvider {
//    static var previews: some View {
//        Quiz_Page(pageNum: 0, quizData: Quiz_Model.instance.quizList[Quiz_Model.instance.randomQuizList[0]])
//    }
//}
