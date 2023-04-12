//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Tag_Font: View {
    let tag_name: String
    var body: some View {
        Text(tag_name)
            .padding()
            .foregroundColor(ColorHelper.white)
            .frame(maxWidth: .infinity, alignment: .center)
            .frame(height: 35)
            .font(.system(size: 15,weight: .semibold))
            .background(ColorHelper.teal)
        .cornerRadius(CGFloat(10))
    }
}

struct Tag_Font_Previews: PreviewProvider {
    static var previews: some View {
        Tag_Font(tag_name: "tag")
    }
}
