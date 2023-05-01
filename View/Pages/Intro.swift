//
//  Intro.swift
//  k-fonts
//
//  Created by Seungui Moon on 2023/04/11.
//

import SwiftUI

struct Intro: View {
    @State var imgOpacity = 1
    @State var moveTo = 1
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer().frame(height: 10)
            Image("intro_main2")
                .resizable()
                .frame(width: 148, height: 476)
            
            Spacer()
            
            Image("intro_logo")
                .resizable()
                .frame(width: 138, height: 99)
            
            Spacer().frame(height: 50)
            
            NavigationLink(destination: IntroStart()){
                ButtonLarge(
                    text: "About Korean Fonts",
                    color_text: ColorHelper.white,
                    color_bg: ColorHelper.orange
                )
            }
            
            Spacer()
                .frame(height: 20)
        }
        .padding()
        .ignoresSafeArea()
        .background(ColorHelper.gray_light)
        
    }
}

struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        Intro()
    }
}
