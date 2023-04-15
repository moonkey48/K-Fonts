//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Main_Page: View {
    @State var isPopup = false
    let fontList = Font_Model.instance.fontList
    
    var body: some View {
        ZStack {
            
            ScrollView(showsIndicators: false) {
                Spacer().frame(height: 50)
                VStack {
                    TabView {
                        ForEach(fontList, id: \.id) { font in
                            Module_Main_Card(fontData: font)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(width: .infinity, height: 410)
                    
                    Module_Main_Typo_Plus()
                        .frame(maxWidth: .infinity)
                    
                    Spacer().frame(height: 20)
                    Module_Main_Score()
                    Spacer().frame(height: 20)
                    
                    Module_Main_Bottom()
                    .frame(width: .infinity, height: 300)
                    
                    Spacer().frame(height: 20)
                }
            }
            .padding()
            .background(ColorHelper.gray_light)
            .ignoresSafeArea()
            
            if isPopup {
                Module_Main_Popup(isPopup: $isPopup)
            }
        }
    }
}

struct Main_Page_Previews: PreviewProvider {
    static var previews: some View {
        Main_Page()
    }
}
