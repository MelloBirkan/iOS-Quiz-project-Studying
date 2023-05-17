//
//  WelcomeView.swift
//  iOSQuiz
//
//  Created by Marcello Gonzatto Birkan on 16/05/23.
//

import SwiftUI

struct WelcomeView: View {
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        NavigationView {
            ZStack {
                mainColor.ignoresSafeArea()
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
                    NavigationLink (
                        destination: GameView(),
                        label: {
                            HStack {
                                Spacer()
                                Text("Okay, bora comecar!")
                                    .font(.body)
                                    .bold()
                                    .padding()
                            }.background(accentColor)
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
