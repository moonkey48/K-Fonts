//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/13.
//

import SwiftUI

struct Quiz_Page: View {
    let pageNum: Int
    let answer = 1
    let options = ["이탈리안", "이탈리안"]
    @State var selectedAnswer = 0
    @State var alert_text = false
    
    
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer().frame(height: 90)
    
            HStack {
                ForEach(1..<11) { number in
                    Module_Quiz_Step(step: number, isCurrent: pageNum == number ? true : false, isCorrect: false)                    
                }
            }
            
            Spacer().frame(height: 20)
            
            VStack(alignment: .leading) {
                Text("Quiz 1")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(ColorHelper.orange)
                Spacer().frame(height: 10)
                
                Text("which is good case for italian food signage?")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 24, weight: .bold))
                
                Spacer().frame(height: 20)
                
                Text("* 이탈리안 means Itanlian in korean")
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
                Button_Quiz(selectedAnswer: $selectedAnswer,buttonNum: 1)
                    .onTapGesture {
                        selectedAnswer = 1
                    }
                Spacer().frame(height: 10)
                Button_Quiz(selectedAnswer: $selectedAnswer, buttonNum: 2)
                    .onTapGesture {
                        selectedAnswer = 2
                    }
            }
            Spacer()
            
            if alert_text {
                Text_Alert(alert: "select button first")
            }
            
            Spacer().frame(height: 20)
            
            if selectedAnswer != 0{
                NavigationLink(destination: Quiz_Page(pageNum: pageNum + 1) ){
                    Button_Large(text: "Next", color_text: ColorHelper.white, color_bg: ColorHelper.orange )
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
    }
}

struct Quiz_Page_Previews: PreviewProvider {
    static var previews: some View {
        Quiz_Page(pageNum: 1)
    }
}
