//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct MainPage: View {
    @State var isPopup = true
    var quizModel = QuizModel.instance
    let fontList = FontModel.instance.fontList
    
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                Spacer().frame(height: 20)
                VStack {
                    TabView {
                        ForEach(fontList, id: \.id) { font in
                            ModuleMainCard(fontData: font)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(width: 360, height: 410)
                    
                    ModuleMainTypoPlus()
                    
                    Spacer().frame(height: 20)
                    ModuleMainScore()
                    Spacer().frame(height: 20)
                    
                    
                    ModuleMainBottom()
                    
                    Spacer().frame(height: 20)
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(ColorHelper.gray_light)
            .ignoresSafeArea()
            
            
            
            if isPopup {
                ModuleMainPopup(isPopup: $isPopup)
            }
        }
        .navigationBarHidden(true)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
