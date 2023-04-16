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
        TypoItem(id: 0,title: "Serif vs San-Serif", imageName: "Typo_Story1", description: "When Web Designer or Developer makes service for multinational environment, word-break: keep-all divide text line with word."),
        TypoItem(id: 1,title: "Serif vs San-Serif", imageName: "Typo_Story1", description: "When Web Designer or Developer makes service for multinational environment, word-break: keep-all divide text line with word."),
    ]
    
    static let instance = Typo_Model()
    private init(){}
}
