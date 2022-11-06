//
//  QuizBrain.swift
//  Quizer
//
//  Created by Macbook Pro 2017 (Rayhan) on 6/11/22.
//

import Foundation

struct QuizBrain {
    let question = [
        
        Questions(q: "A slug's blood is green.", a: "True"),
        Questions(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
        Questions(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
        Questions(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
        Questions(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
        Questions(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
        Questions(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
        Questions(q: "Google was originally called 'Backrub'.", a: "True"),
        Questions(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
        Questions(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
        Questions(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
        Questions(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True"),
        Questions(q: "There are 4 lungs in the human body", a: "False"),
        Questions(q: "The human skin regenerates once in two weeks", a: "False"),
        Questions(q: "The average human body consists of 60% water", a: "True"),
        Questions(q: "The liver is the largest internal organ in the human body", a: "True")
        ]
     var questionNo = 0
    
    func checkAnswer (_ userAnswer:String)  -> Bool {
        if userAnswer == question[questionNo].answer{
            return true
        }
        else{
            return false
        }
        
    }
    
    func getQuestion() -> String {
        return question[questionNo].questionNoS
    }
    
    
    func getProgress() -> Float {
        return Float(questionNo+1) / Float(question.count)
    }
    
    mutating func nextQuestion(){
        if questionNo + 1 < question.count {
            questionNo += 1
            print("\(question.count) \(questionNo)")
        }
        else{
            questionNo = 0
        }
    }
}
