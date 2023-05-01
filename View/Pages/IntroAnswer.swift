//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/11.
//

import SwiftUI

struct IntroAnswer: View {
    
    /// 받은 입력 값
    let input: String
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            Spacer().frame(height: 90)
            
            VStack {
                Spacer().frame(height: 60)
                Image("Intro_eng")
                    .resizable()
                    .frame(width: 242, height: 89)
                Spacer().frame(height: 30)
                Divider()
                Spacer().frame(height: 45)
                Text("Actually, if you change the Korean letter to English, it feels like this.")
                    .frame(width: 288)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 24, weight: .bold))
                Spacer().frame(height: 20)
                Text("It is a old style font.")
                    .frame(width: 288)
                    .multilineTextAlignment(.center)
                    .foregroundColor(ColorHelper.orange)
                    .font(.system(size: 26, weight: .bold))
                
                Spacer().frame(height: 70)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .cornerRadius(CGFloat(20))
            .background(ColorHelper.white)
            .foregroundColor(ColorHelper.black)
            .font(.system(size: 20,weight: .bold))
            .cornerRadius(CGFloat(20))
            
            Spacer().frame(height: 20)
            
            Text("Answer")
                .frame(width: 288)
                .multilineTextAlignment(.center)
                .foregroundColor(ColorHelper.teal)
                .font(.system(size: 22, weight: .semibold))
            Spacer().frame(height: 10)
            
            ButtonLarge(
                text: "Old",
                color_text: ColorHelper.white,
                color_bg: ColorHelper.teal
            )
            
            Spacer()
            

            NavigationLink(destination: MainPage()) {
                ButtonLarge(
                    text: "Next",
                    color_text: ColorHelper.white,
                    color_bg: ColorHelper.orange
                )
                
            }
            
            Spacer().frame(height: 10)
            
        }
        .padding()
        .background(ColorHelper.gray_light)
        .ignoresSafeArea()
        .navigationBarItems(trailing:
            Button(action: {}) {
                NavigationLink(destination: MainPage()) {
                    ButtonSkip()
                }
            }
        )
    }
}

struct IntroAnswer_Previews: PreviewProvider {
    static var previews: some View {
        IntroAnswer(input: "")
    }
}
