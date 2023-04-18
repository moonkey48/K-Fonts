//
//  File.swift
//  
//
//  Created by Seungui Moon on 2023/04/14.
//

import SwiftUI

public enum FontStyle {
    case Friendly
    case Happy
    case Comfort
    case Fancy
    case Trendy
    case Retro
    case Elegant
    case Formal
    case Traditional
    case Personal
    case Strong
    case Funky
    case Universal
    case Neutral
    case Objective
    case Clean
    case Trust
    case Stylish
}

struct FontData {
    var name: String
    var id: Int
    var mainName: String
    var subName: String
    var subDescription: String
    var tags: [FontStyle]
}



public struct Font_Model {
    static let instance = Font_Model()
    
    
    
    let fontList: [FontData] = [
        FontData(name: "neurimbo Gothic", id: 1, mainName: "fontMain1", subName: "fontSub1", subDescription: "Trendy with just the letters", tags: [.Trendy, .Retro]),
        FontData(name: "TAEBAEK milkyway", id: 2, mainName: "fontMain2", subName: "fontSub2", subDescription: "If you want to do something fun", tags: [.Friendly, .Happy]),
        FontData(name: "EF_watermelonSalad", id: 3, mainName: "fontMain3", subName: "fontSub3", subDescription: "comfortable but new", tags: [.Comfort, .Fancy]),
        FontData(name: "BM Hanna 11yrs Old", id: 4, mainName: "fontMain4", subName: "fontSub4", subDescription: "Recreation of old fonts", tags: [.Trendy, .Retro]),
        FontData(name: "Nanum Myeongjo", id: 5, mainName: "fontMain5", subName: "fontSub5", subDescription: "the elegance of Hangul", tags: [.Elegant, .Formal]),
        FontData(name: "Chosun Centennial", id: 6, mainName: "fontMain6", subName: "fontSub6", subDescription: "Main cover of a history book", tags: [.Traditional, .Stylish]),
        FontData(name: "Gamja Flower", id: 7, mainName: "fontMain7", subName: "fontSub7", subDescription: "Fonts like children's words", tags: [.Friendly, .Personal]),
        FontData(name: "Pilseung Gothic", id: 8, mainName: "fontMain8", subName: "fontSub8", subDescription: "weight trained font", tags: [.Strong, .Retro]),
        FontData(name: "BM Kirang Haerang", id: 9, mainName: "fontMain9", subName: "fontSub9", subDescription: "new and childlike", tags: [.Fancy, .Funky]),
        FontData(name: "Noto Sans KR", id: 10, mainName: "fontMain10", subName: "fontSub10", subDescription: "writing formal documents", tags: [.Universal, .Neutral]),
        FontData(name: "Room No.703 OTF", id: 11, mainName: "fontMain11", subName: "fontSub11", subDescription: "my secret diary", tags: [.Happy, .Personal]),
        FontData(name: "Bookk Gothic", id: 12, mainName: "fontMain12", subName: "fontSub12", subDescription: "To a book lover", tags: [.Clean, .Trust]),
        FontData(name: "BM Dohyeon", id: 13, mainName: "fontMain13", subName: "fontSub13", subDescription: "a strong and firm story", tags: [.Trendy, .Retro]),
        FontData(name: "BM Yeonsung", id: 14, mainName: "fontMain14", subName: "fontSub14", subDescription: "With sincerity, one by one", tags: [.Stylish, .Personal]),
    ]
    private init(){}
}
