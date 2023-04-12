//
//  Intro.swift
//  k-fonts
//
//  Created by Seungui Moon on 2023/04/11.
//

import SwiftUI

struct Intro: View {
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            VStack {
                Image("Intro_main")
                    .resizable()
                    .frame(width: 200, height: 54)
                Spacer().frame(height: 20)
                Text("Let’s Learn Korean Fonts")
                    .frame(width: 200)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            
            NavigationLink(destination: Intro_Quiz()){
                Button_Large(text: "About Korean Fonts", color_text: ColorHelper.white,  color_bg: ColorHelper.orange)
            }
            
            Spacer()
                .frame(height: 20)
        }
        .padding()
        .background(ColorHelper.gray_light)
        .ignoresSafeArea()
    }
}

struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        Intro()
    }
}
