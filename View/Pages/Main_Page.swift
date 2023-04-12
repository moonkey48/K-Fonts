//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Main_Page: View {
    @State var isPopup = true
    var body: some View {
        VStack {
            Spacer().frame(height: 90)
            
            VStack {
                Group {
                    Spacer().frame(height: 30)
                    Image("Intro_kor")
                        .resizable()
                        .frame(width: 161, height: 99)
                    Text("GungSeo font")
                        .multilineTextAlignment(.center)
                        .foregroundColor(ColorHelper.gray_dark)
                        .font(.system(size: 20, weight: .medium))
                    Spacer().frame(height: 20)
                    Divider()
                    Spacer().frame(height: 20)
                    Image("fonts_ex_gungseo")
                        .resizable()
                        .frame(width: 247, height: 23)
                    Spacer().frame(height: 10)
                    Text("Hello, this is korean language")
                        .frame(width: 360)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(ColorHelper.gray_dark)
                    Spacer().frame(height: 20)
                }
               
                Group {
                    HStack {
                        Tag_Font(tag_name: "Old")
                        Tag_Font(tag_name: "Strong")
                    }
                }
               
            }
            .padding()
            .frame(width: 340, height: 350,alignment: .top)
            .background(ColorHelper.white)
            .foregroundColor(ColorHelper.black)
            .font(.system(size: 20,weight: .bold))
            .cornerRadius(CGFloat(20))
            
            Spacer()
            
            VStack {
                VStack(alignment: .leading) {
                    Text("Do you want to test your korean typography skill?")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 22, weight: .regular))

                    Spacer().frame(height: 10)
                    Text("Try Quiz!")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(ColorHelper.orange)
                }
                .offset(x:0, y:20)
                .lineSpacing(3)
                .zIndex(1)
                
                Spacer()
                

                Image("main_try_quiz")
                    .resizable()
                    .frame(width: 241, height: 128)
                    .offset(x:30,y:10)
                Button_Large(text: "Next", color_text: ColorHelper.white, color_bg: ColorHelper.orange)
            }
            .frame(maxWidth: .infinity, maxHeight: 300, alignment: .leading)
            .background(ColorHelper.white)
            .foregroundColor(ColorHelper.black)
            .font(.system(size: 20,weight: .bold))
            .cornerRadius(CGFloat(20))
            
            Spacer().frame(height: 20)
        }
        .padding()
        .background(ColorHelper.gray_light)
        .ignoresSafeArea()
    }
}

struct Main_Page_Previews: PreviewProvider {
    static var previews: some View {
        Main_Page()
    }
}
