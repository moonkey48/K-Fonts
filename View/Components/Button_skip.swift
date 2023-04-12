//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct Button_Skip: View {
    var body: some View {
        Text("Skip")
            .font(.system(size: 20, weight: .regular))
            .foregroundColor(ColorHelper.teal)
    }
}

struct Button_Skip_Previews: PreviewProvider {
    static var previews: some View {
        Button_Skip()
    }
}
