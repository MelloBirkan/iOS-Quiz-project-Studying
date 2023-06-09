//
//  ContentView.swift
//  iOSQuiz
//
//  Created by Marcello Gonzatto Birkan on 25/04/23.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses,incorrectGuesses: viewModel.incorrectguesses)),
                           isActive:.constant(viewModel.gameIsOver),
                           label: {EmptyView()})
                          )
            .foregroundColor(.white)
            .navigationBarHidden(true)
            .environmentObject(viewModel)
            }
            }
            
            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    GameView()
                }
            }
