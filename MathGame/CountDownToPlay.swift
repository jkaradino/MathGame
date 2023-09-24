//
//  CountDownToPlay.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 26.08.23.
//

import SwiftUI

//class cntExchangeVariables: ObservableObject {
//    @Published var CounterIsZero: Bool = false
//    @Published var CountDownText: String = "aaa"
//}

struct CountDownToPlay: View {
    @State var seconds: Int = 3
    @State var timerIsPaused: Bool = true
    @State var timer: Timer? = nil
    @State var CounterIsZero: Bool = false
    @State var CountDownText: String = ""
    let backgroundColor = MainProperties.BGColors.init()
    @State var DynSizeOfNumber: Float = 0.0
    
    // Timer for increasing the size dynamically
    @State var MStimer: Timer? = nil
    @State var msec: Int = 0
    
    // Test variabled (will be deleted)
    @State var testVaer: String = ""
    @EnvironmentObject var outputData: GlobalVariables
    
//    @EnvironmentObject var writeData: cntExchangeVariables
    
    var body: some View {
        VStack {
            Group {
                if seconds == 0 {
                    Text("GO")
                } else {
                    if seconds > 0 {
                        Text("\(seconds)")
                    }
                }
            }
            .frame(width: 110, height: 110)
            //.font(.system(size: CGFloat(DynSizeOfNumber), weight: .bold))
            .font(.custom("American Typewriter", size: CGFloat(DynSizeOfNumber)))
            .bold()
        //.background(backgroundColor.secondaryColor)
            .scaleEffect(4)
            .foregroundColor(backgroundColor.secondaryColor)
        //.clipShape(Capsule())
            .padding()
        }
        .onAppear {
            if CounterIsZero == true {
                self.restartTimer()
                //CountDownText = "GO"
                outputData.CounterIsZero = true
                outputData.CountDownText = "abc"
                //SizeOfNumber()
            }
            if CounterIsZero == false {
                self.startTimer()
                CountDownText = "\(seconds)"
                outputData.CountDownText = "def"
                SizeOfNumber()
            }
        }
    }
        
    func restartTimer() {
        seconds = 0
        testVaer = "restartTimer func"
        CounterIsZero = true
    }
        
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { tempTimer in
            // Logic for timer counting up
            if self.seconds == 0 {
                self.seconds = -1
                CounterIsZero = true
                outputData.CounterIsZero = true
            } else {
                if self.seconds > -1 {
                    self.seconds = self.seconds - 1
                    CounterIsZero = false
                    outputData.CounterIsZero = false
                }
            }
        }
    }
    
    func stopTimer() {
        timerIsPaused = true
        timer?.invalidate()
        timer = nil
    }
    
    func SizeOfNumber() {
        //let maxFrameWidth: Int
        //let maxFrameLenght: Int
//        let maxSize: Int = 100
//        let minSize: Int = 0
        @State var enableRepeat: Bool = true
        var numberRepeats: Int = 0
        DynSizeOfNumber = 0.0
        
        if numberRepeats > 4 {
            DynSizeOfNumber = 0.0
            //self.stopTimer()
            enableRepeat = false
        }
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.001, repeats: enableRepeat) { tempTimer in
            let factorSize: Float = 20.0
            // Logic for timer counting up
            if self.msec == 999 {
                self.msec = 0
                numberRepeats += 1
                //DynSizeOfNumber = -1
            } else {
                self.msec = self.msec + 1
                DynSizeOfNumber = Float(msec) / factorSize
            }
        }
        
        // OUT
//        var dynFontSize: Int = minSize
//
//
//
//        while (dynFontSize < maxSize) {
//            dynFontSize+=1
//        }
        
        
    }
    
}

struct CountDownToPlay_Previews: PreviewProvider {
    static var previews: some View {
        CountDownToPlay()
            .environmentObject(GlobalVariables())
    }
}
