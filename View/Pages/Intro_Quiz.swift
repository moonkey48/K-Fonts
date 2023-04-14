//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/11.
//

import SwiftUI

struct Intro_Quiz: View {

    @State var alert_text = false
    @State var selected_button = ""
    
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
                Text("한글(Hangeul) means Korean langueage")
                    .frame(width: 360)
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
                    Button_Large(text: "Retro", color_text: selected_button == "Retro" ? ColorHelper.white : ColorHelper.teal,color_bg: selected_button == "Retro" ? ColorHelper.teal : ColorHelper.white )
                        .onTapGesture {
                            selected_button = "Retro"
                        }
                    Button_Large(text: "Old", color_text: selected_button == "Old" ? ColorHelper.white : ColorHelper.teal, color_bg: selected_button == "Old" ? ColorHelper.teal : ColorHelper.white )
                        .onTapGesture {
                            selected_button = "Old"
                        }
                }
                HStack {
                    Button_Large(text: "Vintage", color_text: selected_button == "Vintage" ? ColorHelper.white : ColorHelper.teal, color_bg: selected_button == "Vintage" ? ColorHelper.teal : ColorHelper.white )
                        .onTapGesture {
                            selected_button = "Vintage"
                        }
                    Button_Large(text: "Sharp", color_text: selected_button == "Sharp" ? ColorHelper.white : ColorHelper.teal, color_bg: selected_button == "Sharp" ? ColorHelper.teal : ColorHelper.white)
                        .onTapGesture {
                            selected_button = "Sharp"
                        }
                }
            }
            
            
            
            Spacer()
            
            if alert_text {
                Text_Alert(alert: "select button first")
            }
            Spacer().frame(height: 20)
            
            if selected_button != ""{
                NavigationLink(destination: Intro_Answer(input: selected_button)){
                    Button_Large(text: "Next", color_text: ColorHelper.white, color_bg: ColorHelper.orange )
                }
            } else {
                
                Button_Large(text: "Next", color_text: ColorHelper.white, color_bg: ColorHelper.orange_light )
                    .onTapGesture {
                        self.alert_text = true
                    }
            }
            Spacer().frame(height: 10)
            
        }
        .padding()
        .background(ColorHelper.gray_light)
        .ignoresSafeArea()
        .navigationBarItems(trailing:
            Button(action: {}) {
                NavigationLink(destination: Main_Page()) {
                    Button_Skip()
                }
            }
        )
    }
}

struct Intro_Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Intro_Quiz()
    }
}
