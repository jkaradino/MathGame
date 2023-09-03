//
//  TimerLogic.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 08.07.23.
//

import SwiftUI

struct TimerLogic: View {
    //@State var hours: Int = 0
    @State var minutes: Int = 0
    @State var seconds: Int = 0
    @State var mseconds: Int = 0
    @State var timerIsPaused: Bool = true
    @State var timer: Timer? = nil
    
    @EnvironmentObject var outputData: GlobalVariables
    
    var body: some View {
        HStack {
         //   if seconds < 60 {
            Group {
                Group {
                    Text("\(minutes)")
                    Text(":")
                    Text("\(seconds)")
                }
                .font(Font.title)
                .bold()
                Text(":")
                Text("\(mseconds)")
            }
        }
        .onAppear() {
            if seconds < 3
            {
                self.startTimer()
            }
            if seconds == 3 {
                self.stopTimer()
            }
            outputData.timeSeconds = seconds
                
                //self.restartTimer()
        }
    }
    
    func restartTimer() {
        // dummy
        minutes = 0
        seconds = 0
        mseconds = 0
    }
    
    func startTimer() {
        
        timerIsPaused = false
        //outputData.timeSeconds = seconds
        
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
            outputData.timeSeconds = seconds
        }
    }
    
    func stopTimer() {
        timerIsPaused = true
        timer?.invalidate()
        timer = nil
    }

}

struct TimerLogic_Previews: PreviewProvider {
    static var previews: some View {
        TimerLogic()
            .environmentObject(GlobalVariables())
    }
}

