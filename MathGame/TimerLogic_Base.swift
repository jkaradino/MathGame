//
//  TimerTest.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 08.07.23.
//

import SwiftUI

struct TimerLogic_Base: View {
    //@State var hours: Int = 0
    @State var minutes: Int = 0
    @State var seconds: Int = 0
    @State var mseconds: Int = 0
    @State var timerIsPaused: Bool = true
    @State var timer: Timer? = nil
    
    var body: some View {
        VStack {
            Text("\(minutes):\(seconds):\(mseconds)")
                .font(Font.title)
                
            if timerIsPaused {
                HStack {
                    Button(action: {
                        self.restartTimer()
                        print("RESTART")
                    }) {
                        Image(systemName: "backward")
                            .padding(.all)
                    }
                    .padding(.all)
                    
                    Button(action: {
                        self.startTimer()
                        print("START")
                    }) {
                        Image(systemName: "play")
                            .padding(.all)
                    }
                    .padding(.all)
                }
                } else {
                    Button(action: {
                        self.stopTimer()
                        print("STOP")
                    }) {
                        Image(systemName: "pause")
                            .padding(.all)
                    }
                    .padding(.all)
            }
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

struct TimerLogicBase_Previews: PreviewProvider {
    static var previews: some View {
        TimerLogic_Base()
    }
}
