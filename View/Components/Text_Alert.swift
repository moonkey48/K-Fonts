//
//  SwiftUIView.swift
//  
//
//  Created by Seungui Moon on 2023/04/11.
//

import SwiftUI

struct Text_Alert: View {
    let alert: String
    var body: some View {
        Text(alert)
            .foregroundColor(ColorHelper.orange)
            .font(.system(size: 20, weight: .bold))
    }
}

struct Text_Alert_Previews: PreviewProvider {
    static var previews: some View {
        Text_Alert(alert: "select button first")
    }
}
