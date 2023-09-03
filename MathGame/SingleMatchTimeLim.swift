//
//  SingleMatchTimeLim.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 26.08.23.
//

import SwiftUI

let disableCounter4TestMode = true



struct SingleMatchTimeLim: View {
    @StateObject private var globalVar: GlobalVariables
    init(globalVar: GlobalVariables) {
        _globalVar = StateObject(wrappedValue: { GlobalVariables() }())}
    
    var body: some View {
        VStack {
            MainMathGame()
                .environmentObject(globalVar)
            GroupBox {
                TimerLogic()
                    .environmentObject(globalVar)
                    //.frame(width: 140, height: 60)
                    //.font(.system(size: 10, weight: .light))
                    //.background(Color.green)
            
            }
            Text("\(globalVar.timeSeconds)")
        }
        
        
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
