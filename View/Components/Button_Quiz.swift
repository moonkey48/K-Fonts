//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/13.
//

import SwiftUI

struct Button_Quiz: View {
    @Binding var selectedAnswer: Int
    let buttonNum: Int
    
    var body: some View {
        if selectedAnswer == buttonNum {
            VStack {
                Text("button")
                    .font(.system(size: 30, weight: .bold))
            }
            .padding(30)
            .foregroundColor(ColorHelper.white)
            .frame(maxWidth: .infinity, maxHeight: 130, alignment: .center)
            .background(ColorHelper.teal)
            .cornerRadius(20)
            .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
        } else {
            VStack {
                Text("button")
                    .font(.system(size: 30, weight: .bold))
            }
            .padding(30)
            .foregroundColor(ColorHelper.black)
            .frame(maxWidth: .infinity, maxHeight: 130, alignment: .center)
            .background(ColorHelper.white)
            .cornerRadius(20)
            .shadow(color: ColorHelper.shadow, radius: 4, x: 0 , y: 0)
        }
        
    }
}

//struct Button_Quiz_Previews: PreviewProvider {
//    static var previews: some View {
//        Button_Quiz(buttonNum: 1)
//        
//    }
//}
