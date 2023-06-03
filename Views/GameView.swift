//
//  ContentView.swift
//  iOSQuiz
//
//  Created by Marcello Gonzatto Birkan on 25/04/23.
//

import SwiftUI

struct GameView: View {
    
    @State var mainColor = GameColor.main
    
    
    let question = Question(questionText: "Qual linguagem de programação é usada principalmente para o desenvolvimento de aplicativos iOS?", possibleAnswers: ["Python", "Java", "Swift", "Kotlin"], correctAnswer: 2)
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
        VStack {
            Text(viewModel.questionProgressText)
                .font(.callout)
                .multilineTextAlignment(.leading)
                .padding()
            Text(question.questionText)
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
                .bold()
            Spacer()
            
            HStack {
                ForEach(0..<question.possibleAnswers.count) { answerIndex in
                    Button(action: {print("Escolheu a opção \(answerIndex)")
                        mainColor = answerIndex == question.correctAnswer ? GameColor.correctGuess : GameColor.incorrectGuess
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                    })
                }
            }
            
        }
        .foregroundColor(.white)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
