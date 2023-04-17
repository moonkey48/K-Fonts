//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/13.
//

import SwiftUI

struct Typo_Plus: View {
    let typoModel = Typo_Model.instance
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                Spacer().frame(height: 90)
                HStack {
                    Text("Typography +")
                        .font(CFont.getFont(size: 30,weight: .Bold))
                        .foregroundColor(ColorHelper.teal)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Spacer().frame(height: 20)
                
                ForEach(typoModel.TypoList, id: \.id) { item in
                    Module_Typo(typoItem: TypoItem(id: item.id, title: item.title, imageName: item.imageName, description: item.description))
                    
                    Spacer().frame(height: 20)
                }
                
                
                Spacer()
            }
        }
        .padding()
        .background(ColorHelper.gray_light)
        .ignoresSafeArea()
    }
}

struct Typo_Plus_Previews: PreviewProvider {
    static var previews: some View {
        Typo_Plus()
    }
}
