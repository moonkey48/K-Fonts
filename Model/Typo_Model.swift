//
//  File.swift
//  
//
//  Created by Seungui Moon on 2023/04/16.
//

import SwiftUI


struct TypoItem {
    let id: Int
    let title: String
    let imageName: String
    let description: String
}

struct Typo_Model {
    let TypoList: [TypoItem] = [
        TypoItem(id: 0,title: "Serif vs San-Serif", imageName: "Typo_Story1", description: "Serif is representative of its traditional, timeless meaning, so it gives a feeling of trust, respect, and authority. San-Serif is an easy-to-read font because humans have less information (decoration, Serif) to recognize in the font. San-Serif has a clean, modern meaning. It can express a universal, stable, and neutral feeling."),
        TypoItem(id: 1,title: "word-break: keep-all", imageName: "Typo_Story2", description: "When Web Designer or Developer makes service for multinational environment, word-break: keep-all divide text line with word."),
        TypoItem(id: 2,title: "script font", imageName: "Typo_Story3", description: "Script typeface is a handwritten typeface, so it is familiar and differentiated from other types of fonts, but when used in the text, it is less readable. In the case of script Korean fonts, there are many handwriting styles with strong handwriting, so you can convey familiar, personal, and interesting emotions."),
        TypoItem(id: 3,title: "the atmosphere of letters", imageName: "Typo_Story4", description: "The overall atmosphere of the sentence changes depending on how the characters with curvature such as a “ㄱ, ㅇ, ㅅ, ㅈ, ㅊ, ㅎ” are expressed. In particular, the atmosphere varies depending on whether the circle shape of ᄋ and ㅎ is a garden or an ellipse. The more the curve is emphasized, the softer and more cheerful it becomes, and the more modern it becomes from the ellipse to the garden."),
    ]
    
    static let instance = Typo_Model()
    private init(){}
}
