//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Modele_Main_Bottom: View {
    var body: some View {
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
    }
}

struct Modele_Main_Bottom_Previews: PreviewProvider {
    static var previews: some View {
        Modele_Main_Bottom()
    }
}