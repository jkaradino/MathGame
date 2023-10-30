//
//  FinishedGame.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 19.09.23.
//

import SwiftUI

struct FinishedGameCopy: View {
    //@EnvironmentObject var globalData: GlobalVariables
    
    // input variables for timer text
    var min: Int
    var sec: Int
    var msec: Int
    var score: Int
    
    var text: String = "Congratulations! It's a new high score!"
    
    // Dynmic value increasing
    @State private var timer: Timer? = nil
    @State private var DynSizeOfNumber: Float = 0.0
    //@State var MStimer: Timer? = nil
    @State var maxVal: Double = 0
    
    
    
    var body: some View {
        //Group mit offset ?
        GroupBox {
            VStack {
                
                Text("\(text)")
                    .offset(y: -100)
                
                Group {
                    VStack {
                        ScoreText(scoreValue: score)
                            .padding()
                        TimerText(min: min, sec: sec, msec: msec)
                    }
                } // Score View
                .offset(y: 200)
                
                
            }
            .frame(width: 300, height: 600)
            
            
        }.opacity(Double(DynSizeOfNumber))
            
            .onAppear() {
                SizeOfNumber()
            }
            //.offset(CGSize(0))
    }
    
    func SizeOfNumber() {

        @State var enableRepeat: Bool = true
        var numberRepeats: Int = 0
        DynSizeOfNumber = 0.0

        if numberRepeats > 0 {
            DynSizeOfNumber = 1.0
            //self.stopTimer()
            enableRepeat = false
        }

        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: enableRepeat) { tempTimer in
            let factorSize: Float = 1
            // Logic for timer counting up
            if self.maxVal == 1 {
                self.maxVal = 0
                numberRepeats += 1
                //DynSizeOfNumber = -1
            } else {
                self.maxVal = self.maxVal + 0.025
                DynSizeOfNumber = Float(maxVal) / factorSize
            }
        }
    }
    
}

struct FinishedGame: View {
    //@EnvironmentObject var globalData: GlobalVariables
    
    // input variables for timer text
    var min: Int
    var sec: Int
    var msec: Int
    var score: Int
    
    var IsSingleGame: Bool = true
    var LevelUp: Bool = true
    
    var titleText: String = "Congratulations!"
    var subText: String = "It's a new high score!"
    
    var buttonText: [String] = [
    "Back to start",
    "Next level",
    "Restart game"
    ]
    
    // Dynmic value increasing
    @State private var timer: Timer? = nil
    @State private var DynSizeOfNumber: Float = 0.0
    //@State var MStimer: Timer? = nil
    @State var maxVal: Float = 0.93
    @State var currVal: Float = 0
    
    let backgroundColor = MainProperties.BGColors.init()
    let frameWidth: CGFloat = 350
    let frameHeight: CGFloat = 700
    @State var sub: CGFloat = 0
    @State var ina: CGFloat = 100
    @State var inb = 100
    
    @State private var isHidden = true
    
    @State private var backToStart = false
    
    var body: some View {
        //Group mit offset ?
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(backgroundColor.BrightBlue)
                .opacity(Double(DynSizeOfNumber))
                //.opacity(0.5)
                .frame(width: frameWidth, height: frameHeight)
                .shadow(radius: 20)
            
            VStack {
                Group {
                    HStack {
                        //.padding()
                        Button(action: {
                            StartContent()
                            backToStart.toggle()
                        }, label: {
                            // Back to start
                            HStack {
                                Image(systemName: "arrowshape.turn.up.left.2")
                                Text("\(buttonText[0])")
                            }
                            
                        })
                        .offset(x:10)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            // Next level
                            HStack {
                                Text("\(buttonText[1])")
                                Image(systemName: "arrowshape.turn.up.left.2").rotationEffect(.degrees(180))
                            }
                        })
                        .padding()
                        
                    } // Back Button Group
                    //.position(y: 100)
                    
                    
                }
                .onAppear(perform: {
                    Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false) { (_) in
                        isHidden = false
                    }
                })
                .opacity(isHidden ? 0 : 1)
                
                //.offset(y: 0)
                //.padding()
                
                Group {
                    
                    
                    Text("\(titleText)")
                        .bold()
                        .padding(0.0001)
                    //.offset(y: -100)
                    Text("\(subText)")
                        //.padding()
                        
                    Image(systemName: "medal")
                        .scaleEffect(4)
                        .foregroundColor(Color(red: 1, green: 0.68, blue: 0.267))
                        .offset(y: 50)
                    
                    Text("New medal achieved!")
                        .offset(y: 100)
                    
                    Button(action: {
                        MainMathGame()
                    }, label: {
                        // Next level
                        HStack {
                            Image(systemName: "arrow.counterclockwise")
                            Text("\(buttonText[2])") // Restart game
                            
                        }
                    })
                    .offset(y: 150)
                    
                    //Image(systemName: "arrow.counterclockwise")
                        //.offset(y: 150)
                    
                } // Text Group
                .offset(y: 100)
                
                
                
                Spacer()
                
                Group {
                    VStack {
                        ScoreText(scoreValue: score)
                            .padding()
                        TimerText(min: min, sec: sec, msec: msec)
                    }
                } // Score Group
                .fixedSize(horizontal: true, vertical: false)
                //.offset(y: 384)
                //.position(x: 100, y: 500)
                .offset(y: -74)
                .onAppear(perform: {
                    
                    Timer.scheduledTimer(withTimeInterval: 2.5, repeats: false) { (_) in
                            //i = ina+1

                        sub = CGFloat(ina)
                        
                        //sub = CGFloat(i)
                    }
                }) // currently no impact
                //.position(x: 0, y: 0)
                
                //Spacer()
            }
            
            if backToStart {
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 300, height: 180)
                        .foregroundColor(backgroundColor.GrayBlue)
                        .border(.blue, width: 2).cornerRadius(10)
                    
                    VStack {
                        Text("Do you really want to do it?")
                            .padding()
                        NavigationLink {
                            StartContent()
                                .navigationBarBackButtonHidden()
                        } label: {
                            Text("Go to Start")
                        }
                    }
                    
                    
                }
                

            }
            
                
        }
        .frame(width: frameWidth, height: frameHeight)
    
            .onAppear() {
                
                OpacityAnimation()
            }
            //.offset(CGSize(0))
    }
    
    func OpacityAnimation() {

        @State var enableRepeat: Bool = true
        var numberRepeats: Int = 0
        DynSizeOfNumber = 0.0

        if numberRepeats > 0 {
            DynSizeOfNumber = Float(maxVal)
            //self.stopTimer()
            enableRepeat = false
        }

        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: enableRepeat) { tempTimer in
            let factorSize: Float = 1
            // Logic for timer counting up
            if self.currVal >= maxVal {
                //self.currVal = 0
                numberRepeats += 1
                DynSizeOfNumber = Float(maxVal)
                //DynSizeOfNumber = -1
            } else {
                self.currVal = self.currVal + 0.025
                DynSizeOfNumber = Float(currVal) / factorSize
            }
        }
    }
    
}


struct FinishedGame_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
                FinishedGame(min: 0, sec: 0, msec: 0, score: 0)
                //.environmentObject(GlobalVariables())
        }
        
    }
}
