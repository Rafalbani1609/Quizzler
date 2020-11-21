//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Muhammd Rafa Al bani on 11/19/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain {
    var quiz = [
        Question(text:"Apakah nabi muhammad di beri laqob al-amin oleh penduduk quraisy?",answer:"Ya")
              ,Question(text:"Apakah mu'jizat nabi musa adalah diturunkan nya kitab taurat?",answer:"Ya"),
               Question(text: "Apakah istri kedua rasulullah adalah khodijah?",answer: "Tidak"),
               Question(text: "Apakah umar merupakan kahlifah kedua di dalam sejarah islam?",answer: "YA"),
              Question(text: "Apakah Abu bakar yang menemani rasulullah ketika di dalam gua hira?",answer: "Ya"),
              Question(text: "Apakah Ali merupakan paman rasulullah ?",answer: "Tidak"),
              Question(text: "Apakah rukun islam berjumlah 6",answer: "Ya"),
              Question(text: "Apakah puasa merupakan tiang agama",answer: "Tidak"),
              Question(text: "Sholat subuh 2 rakaat",answer: "Ya"),
              Question(text: "Tanda hari kiamat,keluar nya dajjal",answer: "Ya")
    ]
    var questionNumber = 0
    var score = 0
    
    mutating func getScore() -> Int{
        return score
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
        
    }
    
    func getProgress() -> Float{
        Float(questionNumber + 1) / Float(quiz.count)
        
    }
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count{
        questionNumber += 1
        }else{
            questionNumber = 0
            score = 0
        }
        
    }
    
    mutating func checkAnswer(userAnswe: String) -> Bool{
        if userAnswe == quiz[questionNumber].answer{
            score += 10
            return true
        }else{
            score -= 10
            return false
        }
    }
}
