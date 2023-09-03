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
    @State var DynSizeOfNumber: Int = 0
    
    // Test variabled (will be deleted)
    @State var testVaer: String = ""
    @EnvironmentObject var outputData: GlobalVariables
    
//    @EnvironmentObject var writeData: cntExchangeVariables
    
    func SizeOfNumber() {
        //let maxFrameWidth: Int
        //let maxFrameLenght: Int
        let maxSize: Int = 0
        let minSize: Int = 0
        @State var testvar: Bool = false
        
        // Output
        var dynFontSize: Int = minSize
        
        while dynFontSize < maxSize {
            dynFontSize = dynFontSize + 1
            DynSizeOfNumber = dynFontSize
        }
    }
    
    
    var body: some View {
        //self.SizeOfNumber()
        VStack {
            if seconds == 0 {
                Text("GO!")
                    
            } else {
                Text("\(seconds)")
                    .frame(width: 110, height: 110)
                    .font(.system(size: 40, weight: .bold))
                    //.background(backgroundColor.secondaryColor)
                    .scaleEffect(4)
                    .foregroundColor(backgroundColor.secondaryColor)
                    //.clipShape(Capsule())
                    .padding()
                    
            }
            //SizeOf
            Text("\(DynSizeOfNumber)")
        }
        .onAppear {
            if CounterIsZero == true {
                self.restartTimer()
                //CountDownText = "GO"
                outputData.CounterIsZero = true
                outputData.CountDownText = "abc"
            }
            if CounterIsZero == false {
                self.startTimer()
                CountDownText = "\(seconds)"
                outputData.CountDownText = "def"
            }
        }
        //.environmentObject(outputData)
    }
        
        func restartTimer() {
            seconds = 0
            testVaer = "restartTimer func"
            CounterIsZero = true
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
                    //writeData.CountDownText = "true"
                
                    
                } else {
                    self.seconds = self.seconds - 1
                    CounterIsZero = false
                    testVaer = "not zero"
                    outputData.CounterIsZero = false
                    //writeData.CountDownText = "false"
                }
                //
            }
    }
}

struct CountDownToPlay_Previews: PreviewProvider {
    static var previews: some View {
        CountDownToPlay()
            .environmentObject(GlobalVariables())
    }
}
