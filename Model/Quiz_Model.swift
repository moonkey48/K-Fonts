//
//  File.swift
//  
//
//  Created by Seungui Moon on 2023/04/15.
//

import SwiftUI

struct QuizData {
    let id: Int
    let mainQ: String
    let subQ: String
    let options: [String]
    let answer: Int
    let wrongReason: String
    let wrongReasonImage: String = ""
}
enum QuizState {
    case correct
    case incorrect
    case yet
    case current
}

class Quiz_Model {
    var lastScore: Int = 0
    var currentQuizState:[QuizState] = [.yet, .yet, .yet, .yet, .yet]
    var randomQuizList: [Int] = [1,2,3,4,5]
    
    var quizList: [QuizData] = [
        QuizData(id: 0, mainQ: "I have to make the main page of the scientific paper. Which of the two fonts below is appropriate?", subQ: "사이언스 means “Science” in Korean", options: ["option1", "option2"], answer: 2, wrongReason: "Since scientific papers are in an official situation, it is better to use fonts that have no personality and good readability than fonts that are strong in decoration and characteristic."),
        QuizData(id: 1, mainQ: "I'm going to make a children's storybook. What is appropriate as a title font?", subQ: "미녀와 공주 means a Beauty and Princess", options: ["option1", "option2"], answer: 1, wrongReason: "If it's not a book for children, you'd better use an elegant serif font. But the font that makes a lot of sense for children is the font on top."),
        QuizData(id: 2, mainQ: "We are planning to open an Italian restaurant for young people in their 20s. What's the perfect spot for the sign?", subQ: "이탈리안 means Italian in Korean", options: ["option1", "option2"], answer: 1, wrongReason: "If you're an Italian restaurant and want to look trendy, it's better to use a trendy and thick font on top than an old one."),
        QuizData(id: 3, mainQ: "I'm going to make a presentation about the city. Which font fits the city?", subQ: "도시 means a city in Korean 4", options: ["option1", "option2"], answer: 2, wrongReason: "Previously, other fonts have a stronger rural and rugged feeling than cities. For fonts for cities, it is better to use more readable and universal fonts."),
        QuizData(id: 4, mainQ: "I'm going to make a baking game. Which font is appropriate for the title?", subQ: "베이커리 means bakery in Korean.", options: ["option1", "option2"], answer: 1, wrongReason: "The font of the selected option would also be good for representing an old bakery. However, since it is a baking game, it seems better to use fonts with more interesting and trendy features."),
        QuizData(id: 5, mainQ: "We are creating a website related to blockchain. What is the appropriate font  when translated into Korean?", subQ: "블록체인 means blockchain in Korean", options: ["option1", "option2"], answer: 2, wrongReason: "Perhaps it is the most difficult problem. The selected font can also be used, but it seems to be a trendy reinterpretation of the old font rather than a modern feeling in that it has a curve rather than a straight line and is closer to a square than a garden."),
        QuizData(id: 6, mainQ: "Austin, who came to Korea as an exchange student, is trying to make his own trendy logo at the academy. What would be good?", subQ: "오스틴 is Austin in Korean", options: ["option1", "option2"], answer: 2, wrongReason: "The font you chose has a lot of old feeling. The font chosen as the answer is less readable, but it is more appropriate because it emphasizes individuality and trendy feeling through emphasis."),
        QuizData(id: 7, mainQ: "Korean traditional clothes Hanbok is famous for its elegance. Which font is appropriate to make a poster that introduces Hanbok?", subQ: "한복 means the Hanbok in Korean ", options: ["option1", "option2"], answer: 2, wrongReason: "The font you choose is more like a font for infants than the answer. In order to express the elegance of Hanbok well, there is a serif and a neat wicket looks better."),
        QuizData(id: 8, mainQ: "James likes Hangul, so he wants to make a T-shirt with the words Strong Man written on it", subQ: "강한남자 means String Man in Korean", options: ["option1", "option2"], answer: 1, wrongReason: "The font you choose feels like a strong man in his 60s. If you want to make it look younger and stronger, you'd better use a very bold wicket."),
        QuizData(id: 9, mainQ: "Anna is going to make a cheer slogan for the upcoming K-pop idol concert. Which slogan is better to?", subQ: "아이돌 means Idol in Korean", options: ["option1", "option2"], answer: 2, wrongReason: "The font you see the most when translated is the font you choose. These fonts are general, but they are weak in personality and have a strong public and objective feeling as they are general. It seems better to use a more individualistic and trendy font for cheering."),
      
    ]
    
    func checkAnswer(pageNum:Int,quizNum: Int,selected: Int) -> Bool {
        let correctAnswer = quizList[quizNum].answer
        print(randomQuizList)
        if correctAnswer == selected {
            currentQuizState[pageNum] = .correct
            print("true")
            return true
        } else {
            currentQuizState[pageNum] = .incorrect
            print("false")
            return false
        }
    }
    
    static let instance = Quiz_Model()
    private init(){}
}
