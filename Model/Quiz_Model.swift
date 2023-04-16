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
        QuizData(id: 0, mainQ: "I have to make the main page of the scientific paper. Which of the two fonts below is appropriate?", subQ: "사이언스 means “Science” in Korean", options: ["option1", "option2"], answer: 2),
        QuizData(id: 1, mainQ: "I'm going to make a children's storybook. What is appropriate as a text font?", subQ: "미녀와 공주 means a Beauty and Princess", options: ["option1", "option2"], answer: 1),
        QuizData(id: 2, mainQ: "We are planning to open an Italian restaurant for young people in their 20s. What's the perfect spot for the sign?", subQ: "이탈리안 means Italian in Korean", options: ["option1", "option2"], answer: 1),
        QuizData(id: 3, mainQ: "I'm going to make a presentation about the city. Which font fits the city?", subQ: "도시 means a city in Korean", options: ["option1", "option2"], answer: 2),
        QuizData(id: 4, mainQ: "I'm going to make a baking game. Which font is appropriate for the title?", subQ: "베이커리 means bakery in Korean.", options: ["option1", "option2"], answer: 1),
        QuizData(id: 5, mainQ: "We are creating a website related to blockchain. What is the appropriate font thickness when translated into Korean?", subQ: "블록체인 means blockchain in Korean", options: ["option1", "option2"], answer: 2),
        QuizData(id: 6, mainQ: "Austin, who came to Korea as an exchange student, is trying to make his own trendy logo at the academy. What would be good?", subQ: "오스틴 is Austin in Korean", options: ["option1", "option2"], answer: 1),
        QuizData(id: 7, mainQ: "Korean traditional clothes Hanbok is famous for its elegance. Which font is appropriate to make a poster that introduces Hanbok?", subQ: "한복 means the Hanbok in Korean ", options: ["option1", "option2"], answer: 2),
        QuizData(id: 8, mainQ: "James likes Hangul, so he wants to make a T-shirt with the words Strong Man written on it", subQ: "강한남자 means String Man in Korean", options: ["option1", "option2"], answer: 1),
        QuizData(id: 9, mainQ: "Anna is going to make a cheer slogan for the upcoming K-pop idol concert. Which slogan is better to", subQ: "아이돌 means Idol in Korean", options: ["option1", "option2"], answer: 2),
      
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
