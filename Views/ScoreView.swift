//
//  ScoreView.swift
//  iOSQuiz
//
//  Created by Marcello Gonzatto Birkan on 03/06/23.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score")
                    .font(.body)
                    .padding(0.1)
                Text("\(viewModel.porcentage)%")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses)✅")
                        .padding(0.1)
                    Text("\(viewModel.incorrectGuesses)❌")
                }.font(.title)
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Deseja fazer de novo?")
                })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
