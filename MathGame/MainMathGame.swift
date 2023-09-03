//
//  MainMathGame.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 26.07.23.
//

import SwiftUI

struct MainMathGame: View {
    @State private var correctAnswer = 0
    @State private var choiceArray: [Int] = [0,1,2,3]
    @State private var firstNumber = 0
    @State private var secondNumber = 0
    var difficulty = 1000
    
    @State private var score = 0
    let backgroundColor = MainProperties.BGColors.init()
    
    @EnvironmentObject var outputData: GlobalVariables
    
    //
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "stop")
                Text("STOP")
            }
                .font(.system(size: CGFloat(20), weight: .bold))
                .frame(width: 110, height: 30)
                .foregroundColor(backgroundColor.secondaryColor)
                //.background(backgroundColor.secondaryColor.gradient)
                //.clipShape(Capsule())
                .padding(10)
                //.border(backgroundColor.thirdColor, width: 6)
                .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(backgroundColor.thirdColor, lineWidth: 4))
                .padding(35)
            
            
            Group {
                VStack {
                    HStack {
                        
                        Image(systemName: "function")
                        Text("=")
                            .italic()
                        
                            
                    }
                    //Spacer()
                    Text("\(firstNumber) + \(secondNumber)")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(backgroundColor.thirdColor)
                }
            }
            .frame(width: 340, height: 120)
            .background(Color(red: 0.71, green: 0.816, blue: 0.961).opacity(0.4).gradient)
            //.padding()
            .border(backgroundColor.thirdColor, width: 6)
            
            
                
            GroupBox(label: Label("Test", systemImage: "function")) {
                HStack {
                    ForEach(0..<2) { index in
                        Button {
                            answerIsCorrect(answer: choiceArray[index])
                            generateAnswers()
                        } label: {
                            AnswerButton(number: choiceArray[index])
                        }
                    }
                }
                .frame(width: 340, height: 120)
                .background(Color.gray.opacity(0.3))
                //Spacer()
                HStack {
                    ForEach(2..<4) { index in
                        Button {
                            answerIsCorrect(answer: choiceArray[index])
                            generateAnswers()
                        } label: {
                            AnswerButton(number: choiceArray[index])
                        }
                    }
                }
                .frame(width: 340, height: 120)
                .background(Color.blue.opacity(0.4))
            } // Groupbox end
            
            HStack {
                Text("Score: ")
                    .font(.system(size: 20))
                    //.bold()
                    .foregroundColor(backgroundColor.thirdColor)
                Text("\(score)")
                    .font(.system(size: 27))
                    .bold()
                    .foregroundColor(backgroundColor.thirdColor)
                    
            }
            
            // Counter
            //Text("Countertext Test")
            
            
            
        }.onAppear(perform: generateAnswers)
    }
    //
    
    func answerIsCorrect(answer: Int) {
        let isCorrect = answer == correctAnswer ? true : false
        
        if isCorrect {
            self.score += 1
        } else {
            self.score -= 1
        }
    }
    
    func generateAnswers() {
        firstNumber = Int.random(in: 0...(difficulty/2))
        secondNumber = Int.random(in: 0...(difficulty/2))
        var answerList = [Int]()
        
        correctAnswer = firstNumber + secondNumber
        
        for _ in 0...2 {
            answerList.append(Int.random(in: 0...difficulty))
        }
        
        answerList.append(correctAnswer)
        
        choiceArray = answerList.shuffled()
        
    }
}

struct MainMathGame_Previews: PreviewProvider {
    static var previews: some View {
        MainMathGame()
        //SingleMatchNoLim()
            .environmentObject(GlobalVariables())
    }
}
