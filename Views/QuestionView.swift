//
//  QuestionView.swift
//  iOSQuiz
//
//  Created by Marcello Gonzatto Birkan on 02/06/23.
//

import SwiftUI

struct QuestionView: View {
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
        }
    }
}

struct SharedContent: View {
    let question: Question
    
    var body: some View {
        // Conteúdo compartilhado entre VStack e HStack
        ForEach(0..<question.possibleAnswers.count) { answerIndex in
            Button(action: {print("Escolheu a opção \(answerIndex)")
                
            }, label: {
                ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
            })
        }
    }
    
    struct QuestionView_Previews: PreviewProvider {
        static var previews: some View {
            QuestionView(question: Game().currentQuestion)
        }
    }
}
