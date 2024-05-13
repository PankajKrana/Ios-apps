//
//  Question.swift
//  Quizzler
//
//  Created by Pankaj Kumar Rana on 29/04/24.
//  Copyright © 2024 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String , correctAnswer : Bool){
        questionText = text
        answer = correctAnswer
    }
}
