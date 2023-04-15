//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/13.
//

import SwiftUI

struct Quiz_Page: View {
    let pageNum: Int
    var quizData: QuizData
    var quizModel = Quiz_Model.instance
    
    
    @State var quizResultBefore: Bool = false
    @State var quizResultCurrent: Bool = false
    @State var selectedAnswer = 0
    @State var alert_text = false
    
    
    
    var body: some View {
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
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(ColorHelper.orange)
                Spacer().frame(height: 10)
                
                Text("\(quizData.mainQ)")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 24, weight: .bold))
                
                Spacer().frame(height: 20)
                
                Text("\(quizData.subQ)")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(ColorHelper.gray_dark)
                
            }
            .lineSpacing(3)
            .zIndex(1)
            .padding(30)
            .frame(maxWidth: .infinity, maxHeight: 210, alignment: .leading)
            .background(ColorHelper.white)
            .foregroundColor(ColorHelper.black)
            .font(.system(size: 20,weight: .bold))
            .cornerRadius(CGFloat(20))
            
            Spacer().frame(height: 25)
            
            VStack {
                Button_Quiz(selectedAnswer: $selectedAnswer,buttonNum: 1, buttonText: "\(quizData.options[0])")
                    .onTapGesture {
                        selectedAnswer = 1
                        quizResultCurrent = quizModel.checkAnswer(pageNum: pageNum, quizNum: quizData.id, selected:  selectedAnswer)
                        print(quizResultCurrent)
                    }
                Spacer().frame(height: 10)
                Button_Quiz(selectedAnswer: $selectedAnswer, buttonNum: 2, buttonText: "\(quizData.options[1])")
                    .onTapGesture {
                        selectedAnswer = 2
                        quizResultCurrent = quizModel.checkAnswer(pageNum: pageNum, quizNum: quizData.id, selected:  selectedAnswer)
                        print(quizResultCurrent)
                    }
            }
            Spacer()
            Group {
                if alert_text {
                    Text_Alert(alert: "select button first")
                }
                
                Text(quizResultBefore ? "correct" : "")
                
                Spacer().frame(height: 20)
            }
            
            
            if selectedAnswer != 0{
                // 선택 결과 or ""
                // 다음 페이지 숫자
                // 다음 문제 or 마지막 페이지
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
        .onAppear{
            print(quizModel.currentQuizState)
            print(quizResultBefore)
        }
    }
}

struct Quiz_Page_Previews: PreviewProvider {
    static var previews: some View {
        Quiz_Page(pageNum: 0, quizData: Quiz_Model.instance.quizList[Quiz_Model.instance.randomQuizList[0]])
    }
}
