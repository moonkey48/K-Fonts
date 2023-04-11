//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/11.
//

import SwiftUI

struct Intro_Quiz: View {
    @State var isSelected = false
    @State var alert_text = ""
    
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
                    .font(.system(size: 24, weight: .bold))
                Spacer().frame(height: 10)
                Text("It means Korean langueage(Hangeul)")
                    .frame(width: 288)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(ColorHelper.gray_dark)
                Spacer().frame(height: 70)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .cornerRadius(CGFloat(20))
            .background(ColorHelper.white)
            .foregroundColor(ColorHelper.black)
            .font(.system(size: 20,weight: .bold))
            .cornerRadius(CGFloat(20))
            
            Spacer()
                .frame(height: 20)
            
            VStack {
                HStack {
                    Button_Large(text: "Retro", color_text: ColorHelper.teal, color_bg: ColorHelper.white )
                    Button_Large(text: "Old", color_text: ColorHelper.teal, color_bg: ColorHelper.white )
                }
                HStack {
                    Button_Large(text: "Vintage", color_text: ColorHelper.teal, color_bg: ColorHelper.white )
                    Button_Large(text: "Sharpe", color_text: ColorHelper.teal, color_bg: ColorHelper.white )
                }
            }
            
             
            Spacer()
            
            Text_Alert(alert: alert_text)
            
            Spacer()
                .frame(height: CGFloat(10))
            if isSelected{
                NavigationLink(destination: Intro_Answer()){
                    Button_Large(text: "Next", color_text: ColorHelper.white, color_bg: ColorHelper.orange )
                }
            } else {
                Button_Large(text: "Next", color_text: ColorHelper.white, color_bg: ColorHelper.orange_light )
                    .onTapGesture {
                        self.alert_text = "select button first"
                    }
            }
            
        }
        .padding()
        .background(ColorHelper.gray_light)
        .ignoresSafeArea()
    }
}

struct Intro_Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Intro_Quiz()
    }
}
