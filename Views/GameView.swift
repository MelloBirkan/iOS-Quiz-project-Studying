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
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            
        VStack {
            Text("1/10")
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
                        mainColor = answerIndex == question.correctAnswer ? .green : .red
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
