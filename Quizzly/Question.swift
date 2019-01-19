//
//  Question.swift
//  Quizzly


import Foundation

class Question {
    
    let questionText : String
    let matchingBearIfTrue: String
    
    init(text: String, matchingBear: String) {
        questionText = text
        matchingBearIfTrue = matchingBear
    }
}


