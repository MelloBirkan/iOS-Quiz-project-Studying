//
//  ScoreViewModel.swift
//  iOSQuiz
//
//  Created by Marcello Gonzatto Birkan on 03/06/23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var porcentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
    
}
