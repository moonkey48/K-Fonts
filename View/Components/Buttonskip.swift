//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/12.
//

import SwiftUI

struct ButtonSkip: View {
    
    var body: some View {
        Text("Skip")
            .font(CFont.getFont(size: 18, weight: .Bold))
            .foregroundColor(ColorHelper.teal)
    }
    
}

struct ButtonSkip_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSkip()
    }
}
