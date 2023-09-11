//
//  MainMathGame.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 26.07.23.
//

// Tasks and functions within this Method

import SwiftUI

struct MainMathGame: View {
    @State private var correctAnswer = 0
    @State private var choiceArray: [Int] = [0,1,2,3]
    @State private var firstNumber = 0
    @State private var secondNumber = 0
    var difficulty = 100
    var showTimer = true
    var timeLim: Int = 3
    //var holdTimer = false
    
    // add new timer variables to implement timer here
    @State var minutes: Int = 0
    @State var seconds: Int = 0
    @State var mseconds: Int = 0
    //@State private var enaStopBottom: Bool = false
    @State var timerIsPaused: Bool = false
    @State var timer: Timer? = nil
    
    @State var timerIsCounting: Bool = true
    @State var finishedGame: Bool = false
    
    @State private var score = 0
    let backgroundColor = MainProperties.BGColors.init()
    
    @EnvironmentObject var outputData: GlobalVariables
    
    var body: some View {
        VStack {
            if timerIsCounting {
                Button(action: {
                    timerIsCounting.toggle()
                }, label: {
                    GroupBox {
                        //Image(systemName: "stop"
                        Text("STOP GAME")
                            .foregroundColor(Color.red)
                    }
                    .padding()
                })
            } else {
                GroupBox {
                    Text("STOPPED")
                        .foregroundColor(Color.gray)
                }
                .padding()
            }

            Group {
                VStack {
                    HStack {
                        Image(systemName: "function")
                        Text("=")
                            .italic()
                    }
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
            .padding()
            
                
            Group() {
                Text("Choose the correct answer!")
                VStack {
                    HStack {
                        //Spacer()
                        ForEach(0..<2) { index in
                            Button {
                                answerIsCorrect(answer: choiceArray[index])
                                generateAnswers()
                            } label: {
                                AnswerButton(number: choiceArray[index])
                            }
                            
                        }
                        
                    }
                    //.frame(width: 340, height: 120)
                    //.background(Color.gray.opacity(0.3))
                    //Spacer()
                    //.padding(0.1)
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
                    //.frame(width: 340, height: 120)
                    //.background(Color.blue.opacity(0.4))
                    //.frame(width: 340, height: 120)
                }
                .background(backgroundColor.thirdColor.opacity(0.07))
    
            } // 2nd Element (Answer Options)
            //.background(Color.blue.opacity(0.4))
            
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
                    if timerIsCounting {
                        TimerText(min: minutes, sec: seconds, msec: mseconds)
                            .onAppear(perform: {
                                self.startTimer()
                            })
                            
                    } else {
                        //Text("\(minutes):\(seconds):\(mseconds)")
                        TimerText(min: minutes, sec: seconds, msec: mseconds)
                            .onAppear(perform: {
                                self.stopTimer()
                                finishedGame = true
                            })
                    }
                } // 4th Element (Timer)
                .sheet(isPresented: $finishedGame, content: {
                    Text("test")
                })
            }
        }
        .onAppear(perform: generateAnswers)
        
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
        minutes = 0
        seconds = 0
        mseconds = 0
    } // not in use
    
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

struct TimerText: View {
    var min: Int
    var sec: Int
    var msec: Int
    var body: some View {
    let backgroundColor = MainProperties.BGColors.init()
        
        HStack {
            Group {
                Group {
                    Text("\(min)")
                    Text(":")
                    Text("\(sec)")
                }
                .font(.system(size: 20, weight: .bold))
                .bold()
                .foregroundColor(backgroundColor.thirdColor)
                Text(":")
                Text("\(msec)")
                    .foregroundColor(backgroundColor.thirdColor)
            }
        }
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
