//
//  SwiftUIView 2.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Quiz_Intro: View {
    var quizModel = Quiz_Model.instance
    var body: some View {
        VStack(spacing: 0) {
            Spacer().frame(height: 90)
            VStack {
                VStack(alignment: .leading) {
                    Text("Korean Font Quiz")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(ColorHelper.orange)
                    
                    Spacer().frame(height: 10)
                    
                    Text("The following issues are presented. Have fun!")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 24, weight: .bold))
                    
                    Spacer().frame(height: 20)
                    
                    Text("- Better option in certain situations")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 18, weight: .medium))

                    Spacer().frame(height: 5)
                    Text("- Understanding fonts")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 18, weight: .medium))
                    
                    Spacer().frame(height: 5)
                    Text("- total 10  random questions")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 18, weight: .medium))
                    
                }
                .lineSpacing(3)
                .zIndex(1)
                .padding(30)
                
                Spacer()
                

                Image("quiz_intro")
                    .resizable()
                    .frame(width: 274, height: 192)
            }
            .frame(maxWidth: .infinity, maxHeight: 490, alignment: .leading)
            .background(ColorHelper.white)
            .foregroundColor(ColorHelper.black)
            .font(.system(size: 20,weight: .bold))
            .cornerRadius(CGFloat(20))
            
            Spacer()
            NavigationLink(destination: Quiz_Page(pageNum: 0, quizData: quizModel.quizList[quizModel.randomQuizList[0]])){
                Button_Large(text: "Next", color_text: ColorHelper.white, color_bg: ColorHelper.orange )
            }
            
            Spacer().frame(height: 10)
            
        }
        .padding()
        .background(ColorHelper.gray_light)
        .ignoresSafeArea()
        .onAppear {
            var used:[Int] = []
            
            while used.count < 5 {
                let randomInt = Int.random(in: 0..<10)
                if !used.contains(randomInt) {
                    used.append(randomInt)
                }
            }
            quizModel.randomQuizList = []
            for i in used {
                quizModel.randomQuizList.append(i)
            }
            
            quizModel.currentQuizState = [.yet, .yet, .yet, .yet, .yet]

        }
    }
}

struct Quiz_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Quiz_Intro()
    }
}
