//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/13.
//

import SwiftUI

struct Intro_Start: View {
    var body: some View {
        VStack(spacing: 0) {
            Spacer().frame(height: 90)
            VStack {
                VStack(alignment: .leading) {
                    Text("How much do you know about Korean fonts?")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 27, weight: .bold))
                        .foregroundColor(ColorHelper.black)
                    
                    Spacer().frame(height: 10)
                    
                    Text("Recently, many people have become interested in Korea and are trying to learn Korean a lot.")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 18, weight: .semibold))
                    
                    Spacer().frame(height: 20)
                    
                    Text("However, Korean fonts are often used without knowing. Let's understand Korean fonts together and use Korean more appropriately and beautifully")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 18, weight: .semibold))
                    
                    Spacer().frame(height: 20)
                    
                }
                .lineSpacing(3)
                .zIndex(1)
                .padding(30)
                
                Spacer()
                
                Image("intro_start")
                    .resizable()
                    .frame(width: 252, height: 177)
                    .offset(x:40)
            }
            .frame(maxWidth: .infinity, maxHeight: 570, alignment: .leading)
            .background(ColorHelper.white)
            .foregroundColor(ColorHelper.black)
            .font(.system(size: 20,weight: .bold))
            .cornerRadius(CGFloat(20))
            
            Spacer()
            NavigationLink(destination: Intro_Quiz() ){
                Button_Large(text: "Start Learning", color_text: ColorHelper.white, color_bg: ColorHelper.orange )
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

struct Intro_Start_Previews: PreviewProvider {
    static var previews: some View {
        Intro_Start()
    }
}
