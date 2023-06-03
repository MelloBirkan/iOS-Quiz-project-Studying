//
//  GameViewModel.swift
//  iOSQuiz
//
//  Created by Marcello Gonzatto Birkan on 02/06/23.
//

import SwiftUI

class GameViewModel: ObservableObject {
    
    // MARK: - Published properties
    @Published private var game = Game()
    
    // MARK: - Internal properties
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgressText: String {
        "\(game.currentQuestionIndex + 1) / \(game.numberOfQuestions)"
    }
}
