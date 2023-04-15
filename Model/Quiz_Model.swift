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
        QuizData(id: 0, mainQ: "mainQ1", subQ: "subQ", options: ["option1", "option2"], answer: 1),
        QuizData(id: 1, mainQ: "mainQ2", subQ: "subQ", options: ["option1", "option2"], answer: 1),
        QuizData(id: 2, mainQ: "mainQ3", subQ: "subQ", options: ["option1", "option2"], answer: 1),
        QuizData(id: 3, mainQ: "mainQ4", subQ: "subQ", options: ["option1", "option2"], answer: 1),
        QuizData(id: 4, mainQ: "mainQ5", subQ: "subQ", options: ["option1", "option2"], answer: 1),
        QuizData(id: 5, mainQ: "mainQ6", subQ: "subQ", options: ["option1", "option2"], answer: 1),
        QuizData(id: 6, mainQ: "mainQ7", subQ: "subQ", options: ["option1", "option2"], answer: 1),
        QuizData(id: 7, mainQ: "mainQ8", subQ: "subQ", options: ["option1", "option2"], answer: 1),
        QuizData(id: 8, mainQ: "mainQ9", subQ: "subQ", options: ["option1", "option2"], answer: 1),
        QuizData(id: 9, mainQ: "mainQ10", subQ: "subQ", options: ["option1", "option2"], answer: 1),
      
    ]
    
    func checkAnswer(pageNum:Int,quizNum: Int,selected: Int) -> Bool {
        let correctAnswer = quizList[quizNum].answer
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
