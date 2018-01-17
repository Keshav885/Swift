//
//  Question.swift
//  Quizzler
//
//  Created by Keshav Paruchuri on 1/17/18.


import Foundation

class Question{
    
    let question : String
    let answer : Bool
    
    init(text : String, correctAnswer : Bool ){
        question = text
        answer = correctAnswer
    }
    
}
