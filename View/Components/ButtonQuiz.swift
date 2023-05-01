//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/13.
//

import SwiftUI

struct ButtonQuiz: View {
    
    /// 퀴즈에서 선택된 수에 따라 컬러가 달라지기 때문에 Binding으로 받아옴
    @Binding var selectedAnswer: Int
    let buttonNum: Int
    let quizNum: Int
    
    var body: some View {
        
        if selectedAnswer == buttonNum {
            VStack {
                Image("q\(quizNum + 1)Option\(buttonNum)")
            }
            .padding(30)
            .foregroundColor(ColorHelper.white)
            .frame(maxWidth: .infinity, maxHeight: 130, alignment: .center)
            .background(ColorHelper.teal)
            .cornerRadius(20)
            .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
        } else {
            VStack {
                Image("q\(quizNum + 1)Option\(buttonNum)")
            }
            .padding(30)
            .foregroundColor(ColorHelper.black)
            .frame(maxWidth: .infinity, maxHeight: 130, alignment: .center)
            .background(ColorHelper.white)
            .cornerRadius(20)
            .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
        }
        
    }
}

//struct ButtonQuiz_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonQuiz(buttonNum: 1)
//
//    }
//}
