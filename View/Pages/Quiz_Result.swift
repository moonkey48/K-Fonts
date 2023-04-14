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

struct Quiz_Result: View {
    var result: Int
    var result_comment = [
        "New languages are difficult for everyone. Study a little bit more on the main page",
        "It wasn't bad. study a little more!",
        "WOW! You have a great Korean typography skill!",
        "Perfect! You totally understand Korean typography!",
    ]
    var level: Level = .bronze
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer().frame(height: 90)
    
            HStack {
                ForEach(1..<11) { number in
                    Module_Quiz_Step(step: number, isCurrent: false, isCorrect: false)
                }
            }
            
            Spacer().frame(height: 20)
            
            VStack {
                Text("Score")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 26, weight: .bold))
                    .foregroundColor(ColorHelper.gray_dark)
                Spacer().frame(height: 10)
                
                Text("\(result) / 10")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 80, weight: .bold))
                    .foregroundColor(result < 5 ? ColorHelper.orange : ColorHelper.teal)
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
                    Text("Perfect! You totally understand Korean typography!")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 26, weight: .bold))
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
                Button_Large(text: "Try Again", color_text: ColorHelper.white, color_bg: ColorHelper.orange)
                Button_Large(text: "Complete", color_text: ColorHelper.white, color_bg: ColorHelper.teal)
            }
            
            Spacer().frame(height: 25)
            
            
        }
        .padding()
        .background(ColorHelper.gray_light)
        .ignoresSafeArea()
        
    }
}

struct Quiz_Result_Previews: PreviewProvider {
    static var previews: some View {
        Quiz_Result(result: 2)
    }
}
