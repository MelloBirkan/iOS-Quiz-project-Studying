//
//  Question.swift
//  iOSQuiz
//
//  Created by Marcello Gonzatto Birkan on 11/05/23.
//

import SwiftUI

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswer: Int
    
    static var allQuestions = [
        Question(questionText: "O que é o SwiftUI", possibleAnswers: [
        "Uma linguagem de programção",
        "Um ambiente de desenvolvimento integrado",
        "Um framework de interface do usuário para criação de aplicativos iOS",
        "Um sistema operacional"
        ],
                 correctAnswer: 2),

        Question(questionText: "Qual é a principal característica de SwiftUI?",
                         possibleAnswers: [
                            "É uma linguagem baseada em classes",
                            "É um framework para desenvolvimento de backend",
                            "É um framework declarativo para interfaces do usuário",
                            "É um framework para desenvolvimento de jogos"
                         ],
                 correctAnswer: 2),

        Question(questionText: "Quais plataformas da Apple suportam SwiftUI?",
                         possibleAnswers: [
                            "Apenas iOS",
                            "Apenas macOS",
                            "iOS, macOS, watchOS e tvOS",
                            "Apenas watchOS e tvOS"
                         ],
                         correctAnswer: 2),

        Question(questionText: "Como você pode criar uma visualização de texto em SwiftUI?",
                         possibleAnswers: [
                            "Text(\"Hello, SwiftUI!\")",
                            "UILabel(\"Hello, SwiftUI!\")",
                            "Text.new(\"Hello, SwiftUI!\")",
                            "NSString(\"Hello, SwiftUI!\")"
                         ],
                         correctAnswer: 0),

        Question(questionText: "O que são modificadores em SwiftUI?",
                         possibleAnswers: [
                            "Funções que alteram o comportamento de uma view",
                            "Variáveis que armazenam dados",
                            "Funções que deletam uma view",
                            "Variáveis que modificam o estado da aplicação"
                         ],
                         correctAnswer: 0),

        Question(questionText: "Como você pode criar uma navegação entre duas telas em SwiftUI?",
                         possibleAnswers: [
                            "Usando a função .push()",
                            "Usando a função .navigate()",
                            "Usando a função .segue()",
                            "Usando a função .navigationLink()"
                         ],
                         correctAnswer: 3),

        Question(questionText: "O que é um @State em SwiftUI?",
                         possibleAnswers: [
                            "Uma variável que armazena o estado da view",
                            "Uma constante que não muda",
                            "Um tipo de modificador",
                            "Uma função que muda a view"
                         ],
                         correctAnswer: 0),

        Question(questionText: "O que é um PreviewProvider em SwiftUI?",
                         possibleAnswers: [
                            "É uma ferramenta para visualizar as views no Xcode",
                            "É uma ferramenta para compartilhar código entre views",
                            "É um tipo de modificador",
                            "É um tipo de estrutura de dados"
                         ],
                         correctAnswer: 0),

        Question(questionText: "O que é um VStack em SwiftUI?",
                         possibleAnswers: [
                            "É uma pilha vertical de views",
                            "É uma pilha horizontal de views",
                            "É uma pilha de dados",
                            "É um tipo de modificador"
                         ],
                         correctAnswer: 0),

        Question(questionText: "Como você pode aplicar um gradiente de cor a uma view em SwiftUI?",
                         possibleAnswers: [
                            "Usando a função .colorGradient()",
                            "Usando a função .colorOverlay()",
                            "Usando a função .gradient()",
                            "Usando a função .background() com LinearGradient, RadialGradient ou AngularGradient"
                         ],
                         correctAnswer: 3),

    ]
    
}
