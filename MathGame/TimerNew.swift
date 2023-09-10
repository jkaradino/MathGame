//
//  TimerNew.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 10.09.23.
//

import SwiftUI

struct TimerObsolete: View {
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var counter = 0
    var body: some View {
        Text("test")
            .onReceive(timer) { time in
                if counter == 5 {
                    timer.upstream.connect().cancel()
                } else {
                    print("The timer is \(time)")
                }
            }
    }
}

struct TimerNew: View {
    @State var mseconds: Int = 0
    @State var seconds: Int = 0
    @State var minutes: Int = 0
    @State var timer: Timer? = nil
    var body: some View {
        Text("\(minutes):\(seconds):\(mseconds)")
    }
    func createTimer() {
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
}

struct TimerNew_Previews: PreviewProvider {
    static var previews: some View {
        TimerNew()
    }
}
