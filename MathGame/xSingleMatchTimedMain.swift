//
//  SingleMatchTimed.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 14.08.23.
//

import SwiftUI

@MainActor class ExchangeVariables: ObservableObject {
    @Published var CounterIsZero: Bool = false
    
    //var CountDownText: String = ""
}

struct SingleMatchTimed: View {
    var body: some View {
        MainMathGame(difficulty: 1000)
        
    }
}

struct CountDownToStart: View {
    //@State var minutes: Int = 0
    @State var seconds: Int = 3
    //@State var mseconds: Int = 0
    @State var timerIsPaused: Bool = true
    @State var timer: Timer? = nil
    @State var CounterIsZero: Bool = false
    @State var CountDownText: String = ""
    @StateObject var outputData = ExchangeVariables()
    
    @State var testVaer: String = "fuck alen"
//    func updateVar() {
//        outputData.updateVar(true)
//    }
    var body: some View {
        
        VStack {
            Text("\(seconds)")
                .font(Font.title)
            Text("\(testVaer)")
            //Text("\(CounterIsZero)")
        }
        .onAppear {
            if CounterIsZero == true {
                self.restartTimer()
                //CountDownText = "GO"
                outputData.CounterIsZero = true
                testVaer = "fucking"
            }
            if CounterIsZero == false {
                self.startTimer()
                CountDownText = "\(seconds)"
                testVaer = "nothing"
            }
        }
        .environmentObject(outputData)
    }
        
        func restartTimer() {
            seconds = 0
            testVaer = "restartTimer func"
            //CounterIsZero = true
            //outputData.CounterIsZero = true
            //ExchangeVariables(CounterIsZero: true)
           
        }
        
        func startTimer() {
            timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { tempTimer in
                // Logic for timer counting up
                if self.seconds == 0 {
                    self.seconds = 0
                    CounterIsZero = true
                    testVaer = "is 0"
                    //ExchangeVariables()
                    outputData.CounterIsZero = true
                
                    
                } else {
                    self.seconds = self.seconds - 1
                    CounterIsZero = false
                    testVaer = "not zero"
                    outputData.CounterIsZero = false
                    
                }
                //
            }
            //outputData.CounterIsZero = CounterIsZero
           // ExchangeVariables = outputData
            //ExchangeVariables(CounterIsZero: $CounterIsZero)
        }
        //.environmentObject(outputData)
//        func stopTimer() {
//            timerIsPaused = true
//            timer?.invalidate()
//            timer = nil
//            CounterIsZero = false
//        }
}

//struct SelectorSingleMatchTimed: View {
//    var CounterIsZero: Bool
//    //@EnvironmentObject var CntZero: ExchangeVariables
//    //@Binding var test: Bool
//    var body: some View {
//
//        if CounterIsZero == true {
//            SingleMatchTimed()
//        } else {
//            CountDownToStart()
//        }
//    }
//}

struct SingleMatchTimedMain: View {
    //var CounterIsZero: Bool
    //@EnvironmentObject var CntZero: ExchangeVariables
    //@Binding var test: Bool
    var body: some View {
        let CntIsZero: Bool = false//ExchangeVariables()
        
        if CntIsZero == false {
            SingleMatchTimed()
        }
//        } else {
//            CountDownToStart()
//        }
    }
}

struct SingleMatchTimed_Previews: PreviewProvider {
    static var previews: some View {
        //@EnvironmentObject var ExchgVar: ExchangeVariables
        //var CntIsZero = ExchangeVariables()
        
        //@Binding var testInput: Bool
        
        SingleMatchTimedMain()
        
       // SingleMatchTimedMain(CounterIsZero: CntIsZero.CounterIsZero)
            .environmentObject(ExchangeVariables())
        //CountDownToStart()
        //SingleMatchTimed()
    }
}
