//
//  QuestionView.swift
//  iOSQuiz
//
//  Created by Marcello Gonzatto Birkan on 02/06/23.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
                .bold()
            Spacer()
            if question.possibleAnswers[0].count > 8{
                VStack {
                    SharedContent(question: question)
                }
            } else {
                HStack {
                    SharedContent(question: question)
                }
            }
            if viewModel.guessWasMade {
                Button(action: { viewModel.DisplayNextScreen() }) {
                    BottomTextView(str: "Proximo")
                }
            }
        }
    }
}

struct SharedContent: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        // Conteúdo compartilhado entre VStack e HStack
        ForEach(0..<question.possibleAnswers.count) { answerIndex in
            Button(action: {
                print("Escolheu a opção \(question.possibleAnswers[answerIndex])")
                viewModel.makeGuess(atIndex: answerIndex)
            }) {
                ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                    .background(viewModel.color(forOptionIndex: answerIndex))
            }
            .disabled(viewModel.guessWasMade)
        }
    }
}


struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: Game().currentQuestion)
            .environmentObject(GameViewModel())
    }
}

