//
//  SingleMatchTimeLim.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 26.08.23.
//

import SwiftUI

/// TEST PARAMETER
let disableCounter4TestMode = false  // init false

struct SingleMatchTimeLim: View {
    @StateObject private var globalVar: GlobalVariables
    init(globalVar: GlobalVariables) {
        _globalVar = StateObject(wrappedValue: { GlobalVariables() }())}
    
    @State private var maxTimeReached: Bool = false
    @State private var enaStopBottom: Bool = false
    
    var body: some View {
        var sec = globalVar.Seconds
        VStack {
            
            MainMathGame(difficulty: 100, showTimer: true)
                .environmentObject(globalVar)
        }

//            .sheet(isPresented: $maxTimeReached, content: Text("text"))
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
    let backgroundColor = MainProperties.BGColors.init()
    
    var body: some View {
        
        let colors: [Color] = [backgroundColor.DarkBlue, .blue, .teal, backgroundColor.MetallicDarkBlue]
        
        ZStack {
            //MainLayout()
            LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
                .opacity(0.9)
            SingleMatchTimeLimSel(globalVar: GlobalVariables())
        }
    }
}

struct SingleMatchTimeLim_Previews: PreviewProvider {
    static var previews: some View {
        SingleMatchTimeLimCaller()
        //SingleMatchTimeLim(model: cntExchangeVariables())
            //.environmentObject(cntExchangeVariables())
    }
}
