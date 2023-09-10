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
    var showTimer = true
    var holdTimer = false
    
    // add new timer variables to implement timer here
    @State var minutes: Int = 0
    @State var seconds: Int = 0
    @State var mseconds: Int = 0
    @State private var enaStopBottom: Bool = false
    @State var timerIsPaused: Bool = false
    @State var timer: Timer? = nil
    
    @State var timerIsCounting: Bool = true
    
    @State private var score = 0
    let backgroundColor = MainProperties.BGColors.init()
    
    @EnvironmentObject var outputData: GlobalVariables
    
    //
    var body: some View {
        
        VStack {
            
            Button(action: {
                timerIsCounting.toggle()
            }, label: {
                GroupBox {
                    //Image(systemName: "stop")
                    Text("STOP GAME")
                        .foregroundColor(Color.red)
                }
                //.border(Color.red)
            }) // Stop Button
            .padding(20)
            
            
            // hier wars
            
            
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
            } // 1st Element (GroupBox Task)
            .frame(width: 340, height: 75)
            .background(Color(red: 0.71, green: 0.816, blue: 0.961).opacity(0.4).gradient)
            //.padding()
            .border(backgroundColor.secondary2Color, width: 6)
            
            
                
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
            } // 2nd Element (Answer Options)
            
            HStack {
                Text("Score: ")
                    .font(.system(size: 20))
                    //.bold()
                    .foregroundColor(backgroundColor.thirdColor)
                Text("\(score)")
                    .font(.system(size: 27))
                    .bold()
                    .foregroundColor(backgroundColor.thirdColor)
                    
            } // 3rd Element (Score)
            .padding()
            if showTimer {
                VStack {
//                    GroupBox {
//                        TimerLogic(holdTimer: true)
//                        //.environmentObject(globalVar)
//                    }
                    //Text("\(minutes):\(seconds):\(mseconds)")
                    
                    
                    if timerIsCounting {
                        Text("\(minutes):\(seconds):\(mseconds)")
                            .onAppear(perform: {
                                self.startTimer()
                            })
                            
                    } else {
                        Text("\(minutes):\(seconds):\(mseconds)")
                            .onAppear(perform: {
                                self.stopTimer()
                            })
                    }
                    
                    
                    
                    //self.startTimer()
//                    if timerIsCounting {
//                        HStack {
//                            //self.startTimer()
//                            Button(action: {
//                                self.restartTimer()
//                            }) {
//                                Image(systemName: "backward")
//                                    .padding(.all)
//                            }
//                            .padding(.all)
//
//                            Button(action: {
//                                self.startTimer()
//                            }) {
//                                Image(systemName: "play")
//                                    .padding(.all)
//                            }
//                            .padding(.all)
//                        }
//                        } else {
//                            Button(action: {
//                                self.stopTimer()
//                                print("STOP")
//                            }) {
//                                Image(systemName: "pause")
//                                    .padding(.all)
//                            }
//                            .padding(.all)
//                    }
                
                    
                } // 4th Element (Timer)
            }
            
            
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
    
    func restartTimer() {
        // dummy
        minutes = 0
        seconds = 0
        mseconds = 0
    }
    
    func startTimer() {
        timerIsPaused = false
        timer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: true) { tempTimer in
            // Logic for timer counting up
            if self.mseconds == 999 {
                self.mseconds = 0
                if self.seconds == 59 {
                    self.seconds = 0
                    self.minutes = self.minutes + 1
                } else {
                    self.seconds = self.seconds + 1
                }
            } else {
                self.mseconds = self.mseconds + 1
            }
            
        }
    }
    
    func stopTimer() {
        timerIsPaused = true
        timer?.invalidate()
        timer = nil
    }
    
    
}

struct MainMathGame_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack {
            MainLayout()
            MainMathGame()
            //SingleMatchNoLim()
                .environmentObject(GlobalVariables())
            //.toolbar(.hidden, for: .navigationBar)
            
            
        }
    }
}
