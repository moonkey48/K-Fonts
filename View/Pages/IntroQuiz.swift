//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/11.
//

import SwiftUI

struct IntroQuiz: View {

    @State var alertText = false
    @State var selectedButton = ""
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer().frame(height: 90)
            VStack {
                Spacer().frame(height: 60)
                Image("Intro_kor")
                    .resizable()
                    .frame(width: 161, height: 99)
                Spacer().frame(height: 30)
                Divider()
                Spacer().frame(height: 45)
                Text("How do you feel about the korean letter above?")
                    .frame(width: 288)
                    .multilineTextAlignment(.center)
                    .font(CFont.getFont(size: 24, weight: .SemiBold))
                
                Spacer().frame(height: 10)
                Text("한글(Hangeul) means Korean langueage")
                    .frame(width: 360)
                    .multilineTextAlignment(.center)
                    .font(CFont.getFont(size: 16, weight: .SemiBold))
                    .foregroundColor(ColorHelper.gray_dark)
                Spacer().frame(height: 70)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .cornerRadius(CGFloat(20))
            .background(ColorHelper.white)
            .foregroundColor(ColorHelper.black)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(CGFloat(20))
            
            Spacer()
                .frame(height: 20)
            
            VStack {
                HStack {
                    ButtonLarge(
                        text: "Retro",
                        colorText: selectedButton == "Retro" ? ColorHelper.white: ColorHelper.teal,
                        colorBg: selectedButton == "Retro" ? ColorHelper.teal: ColorHelper.white
                        )
                        .onTapGesture {
                            selectedButton = "Retro"
                        }
                    ButtonLarge(
                        text: "Old",
                        colorText: selectedButton == "Old" ? ColorHelper.white: ColorHelper.teal,
                        colorBg: selectedButton == "Old" ? ColorHelper.teal : ColorHelper.white
                        )
                        .onTapGesture {
                            selectedButton = "Old"
                        }
                }
                HStack {
                    ButtonLarge(
                        text: "Vintage",
                        colorText: selectedButton == "Vintage" ? ColorHelper.white : ColorHelper.teal,
                        colorBg: selectedButton == "Vintage" ? ColorHelper.teal : ColorHelper.white
                        )
                        .onTapGesture {
                            selectedButton = "Vintage"
                        }
                    ButtonLarge(
                        text: "Sharp",
                        colorText: selectedButton == "Sharp" ? ColorHelper.white: ColorHelper.teal,
                        colorBg: selectedButton == "Sharp" ? ColorHelper.teal : ColorHelper.white
                        )
                        .onTapGesture {
                            selectedButton = "Sharp"
                        }
                }
            }
            
            
            
            Spacer()
            
            TextAlert(alert: "Select button first")
                .opacity(alertText ? 1 : 0)
                
            
            Spacer()
            
            if selectedButton != ""{
                NavigationLink(
                    destination: IntroAnswer(input: selectedButton)
                ){
                    ButtonLarge(
                        text: "Next",
                        colorText: ColorHelper.white,
                        colorBg: ColorHelper.orange )
                }
            } else {
                
                ButtonLarge(
                    text: "Next",
                    colorText: ColorHelper.white,
                    colorBg: ColorHelper.orange_light
                    )
                    .onTapGesture {
                        self.alertText = true
                    }
            }
            
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

struct IntroQuiz_Previews: PreviewProvider {
    static var previews: some View {
        IntroQuiz()
    }
}
