//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Main_Page: View {
    @State var isPopup = false
    var body: some View {
        ZStack {
            VStack {
                TabView {
                    Module_Main_Card()
                    Module_Main_Card()
                    Module_Main_Card()
                    Module_Main_Card()
                    Module_Main_Card()
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                
                Spacer()
                
                Modele_Main_Bottom()
                
                Spacer().frame(height: 20)
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
