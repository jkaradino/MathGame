//
//  SingleMatchTimeLim.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 26.08.23.
//

import SwiftUI

/// TEST PARAMETER
let disableCounter4TestMode = true  // init false



struct SingleMatchTimeLim: View {
    @StateObject private var globalVar: GlobalVariables
    init(globalVar: GlobalVariables) {
        _globalVar = StateObject(wrappedValue: { GlobalVariables() }())}
    
    @State private var maxTimeReached: Bool = false
    @State private var enaStopBottom: Bool = false
    
    var body: some View {
        var sec = globalVar.Seconds
        VStack {
            
            
            Button(action: {
                enaStopBottom.toggle()
            }, label: {
                GroupBox {
                    Image(systemName: "stop")
                    Text("STOP GAME")}
                .border(Color.red)
            })
            
            MainMathGame(difficulty: 100, showTimer: true, holdTimer: enaStopBottom)
                .environmentObject(globalVar)
                
//            GroupBox {
//                TimerLogic()
//                    .environmentObject(globalVar)
//            }
            
            //Text("\(globalVar.Seconds)")
        }
        if enaStopBottom == true {
            Text("\(sec)")
        }
        //.sheet(isPresented: $maxTimeReached, content: Text("text"))
        
        
//        .sheet(isPresented: $showComposeMessageView, content: {
//            ZStack {
//                Color.blue
//                Text("😀")      // control + command + space
//            }

        //})
        
        
        
    }
}

struct SingleMatchTimeLimSel: View {
    @StateObject private var globalVar: GlobalVariables
    init(globalVar: GlobalVariables) {
        _globalVar = StateObject(wrappedValue: { GlobalVariables() }())}
    
    var body: some View {
        ZStack {
            //Text("\(model.CountDownText)")
            if globalVar.CounterIsZero == true {
                SingleMatchTimeLim(globalVar: GlobalVariables())
            }
            if disableCounter4TestMode == true {
                SingleMatchTimeLim(globalVar: GlobalVariables())
            }
            else {
                CountDownToPlay()
                    .environmentObject(globalVar) // this is very important
            }
        }
    }
}

struct SingleMatchTimeLimCaller: View {
    var body: some View {
        SingleMatchTimeLimSel(globalVar: GlobalVariables())
    }
}

struct SingleMatchTimeLim_Previews: PreviewProvider {
    static var previews: some View {
        SingleMatchTimeLimCaller()
        //SingleMatchTimeLim(model: cntExchangeVariables())
            //.environmentObject(cntExchangeVariables())
    }
}
