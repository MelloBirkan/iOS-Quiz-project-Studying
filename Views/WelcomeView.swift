//
//  WelcomeView.swift
//  iOSQuiz
//
//  Created by Marcello Gonzatto Birkan on 16/05/23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0){
                        Text("Selecione as respostas certas para as seguintes perguntas")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    Spacer()
                    NavigationLink (
                        destination: GameView(),
                        label: {
                                BottomTextView(str: "Okay, bora começar!")
                    })
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
