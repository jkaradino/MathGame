//
//  TimerLogic.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 08.07.23.
//

import SwiftUI

func setZero() {
    @EnvironmentObject var outputData: GlobalVariables
    
    outputData.Seconds = 0
    outputData.Minutes = 0
        
}

struct TimerLogic: View {
    //@State var hours: Int = 0
    @State var minutes: Int = 0
    @State var seconds: Int = 0
    @State var mseconds: Int = 0
    @State var timerIsPaused: Bool = true
    @State var timer: Timer? = nil
    var holdTimer: Bool = false
    @EnvironmentObject var outputData: GlobalVariables
    
    // Test
    let timer2 = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    
    var body: some View {
        HStack {
         //   if seconds < 60 {
            Group {
                Group {
                    Text("\(minutes)")
                    Text(":")
                    Text("\(seconds)")
                }
                //.font(Font.title)
                .font(.system(size: 20, weight: .bold))
                .bold()
                Text(":")
                Text("\(mseconds)")
                
                
            }
//            if holdTimer {
//                setZero()
//            }
            
        }
        .onReceive(timer2, perform: { _ in
            
        
        //{
            if holdTimer {
                //seconds = 0
                self.stopTimer()
                //seconds = 1
            }
            else {
                //self.startTimer()
                self.startTimer()
            }
            outputData.Seconds = seconds
                
                //self.restartTimer()
        
        })
        //}
    
//        if seconds > 3 {
//            //restartTimer()
//            //MainMathGame()
//        }
//        if holdTimer {
//            setZero()
//        }
        
        
    }
    
    func restartTimer() {
        // dummy
        self.minutes = 0
        self.seconds = 0
        self.mseconds = 0
    }
    
    func startTimer() {
        
        timerIsPaused = false
        //outputData.timeSeconds = seconds
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: !holdTimer) { tempTimer in
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
            outputData.Seconds = seconds
        }
    }
    
    func stopTimer() {
        timerIsPaused = true
        timer?.invalidate()
        timer = nil
    }
    
//    if seconds == 0 {
//        self.startTimer()
//    }

}

struct TimerLogic_Previews: PreviewProvider {
    static var previews: some View {
        TimerLogic()
            .environmentObject(GlobalVariables())
    }
}

