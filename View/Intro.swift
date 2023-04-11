//
//  Intro.swift
//  k-fonts
//
//  Created by Seungui Moon on 2023/04/11.
//

import SwiftUI

struct Intro: View {
    var body: some View {
        VStack {
            Button(action: {}) {
                Text("About Korean Typography")
                    .padding()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 60)
                    .font(.system(size: 20,weight: .bold))
            }
            .background(ColorHelper.orange)
            .cornerRadius(CGFloat(20))
        }
        .padding()
    }
}

struct Intro_Previews: PreviewProvider {
    static var previews: some View {
        Intro()
    }
}
