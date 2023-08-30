//
//  SingleMatchTimeLim.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 26.08.23.
//

import SwiftUI

struct SingleMatchTimeLim: View {
    @StateObject private var model: cntExchangeVariables
    var testVar: Bool = false
    
    init(model: cntExchangeVariables) {
        _model = StateObject(wrappedValue: { cntExchangeVariables() }())
    }
    
    var body: some View {
        //let CountDownVar = CountDownToPlay.init(outputData: cntExchangeVariables())
        //var CntZero = CountDownVar.outputData.CounterIsZero

        ZStack {
            //Text("\(model.CountDownText)")
            if model.CounterIsZero == true {
                MainMathGame()
            } else {
                CountDownToPlay()
                    .environmentObject(model) // this is very important
            }
        }
        //.environmentObject(CountDownVar)
    }
}

struct SingleMatchTimeLimCaller: View {
    var body: some View {
        SingleMatchTimeLim(model: cntExchangeVariables())
    }
}

struct SingleMatchTimeLim_Previews: PreviewProvider {
    static var previews: some View {
        SingleMatchTimeLimCaller()
        //SingleMatchTimeLim(model: cntExchangeVariables())
            //.environmentObject(cntExchangeVariables())
    }
}
