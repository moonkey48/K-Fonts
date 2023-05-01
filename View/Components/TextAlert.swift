//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/11.
//

import SwiftUI

struct TextAlert: View {
    let alert: String
    var body: some View {
        Text(alert)
            .foregroundColor(ColorHelper.orange)
            .font(CFont.getFont(size: 24, weight: .Bold))
    }
}

struct TextAlert_Previews: PreviewProvider {
    static var previews: some View {
        TextAlert(alert: "select button first")
    }
}
