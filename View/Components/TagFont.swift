//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct TagFont: View {
    let tagName: String
    var body: some View {
        Text(tagName)
            .padding()
            .foregroundColor(ColorHelper.white)
            .frame(maxWidth: .infinity, alignment: .center)
            .frame(height: 35)
            .font(.system(size: 15,weight: .semibold))
            .background(ColorHelper.teal)
        .cornerRadius(CGFloat(10))
    }
}

struct TagFont_Previews: PreviewProvider {
    static var previews: some View {
        TagFont(tagName: "tag")
    }
}
