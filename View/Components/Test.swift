//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/13.
//

import SwiftUI

import SwiftUI

struct Test: View {
    @State private var offsetValue: CGFloat = -50.0

    var body: some View {
        Image("quiz_intro")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .clipped()
            .overlay(
                Rectangle()
                    .foregroundColor(.clear)
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 100)
                    .offset(x: offsetValue)
            )
            .onAppear {
                withAnimation(.easeInOut(duration: 2.0)) {
                    offsetValue = 50.0 // 이미지를 반으로 자른 영역을 오른쪽으로 이동
                }
            }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
