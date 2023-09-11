//
//  SingleMatchView.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 06.07.23.
//

import SwiftUI

struct SingleMatchNoLim: View {
    @State private var correctAnswer = 0
    @State private var choiceArray: [Int] = [0,1,2,3]
    @State private var firstNumber = 0
    @State private var secondNumber = 0
    @State private var difficulty = 1000
    @State private var score = 0
    //var movesPerGame = 30
    @StateObject private var globalVar: GlobalVariables
    init(globalVar: GlobalVariables) {
        _globalVar = StateObject(wrappedValue: { GlobalVariables() }())}
    //
    var body: some View {
//        Color.white.blur(radius: 3)
//            .brightness(0.07)
//            .overlay(
//        MainMathGame(difficulty: 1000)
//            )
        VStack {
            MainMathGame(difficulty: 1000, showTimer: false)
                .environmentObject(globalVar)
        }
    }
}

struct SingleMatchNoLimCaller: View {
    var body: some View {
        ZStack {
            MainLayout()
            SingleMatchNoLim(globalVar: GlobalVariables())
        }
        
    }
}


struct SingleMatchNoLim_Previews: PreviewProvider {
    static var previews: some View {
        //MainMathGame()
        ZStack {
            MainLayout()
            SingleMatchNoLimCaller()
            //.toolbar(.hidden, for: .navigationBar)
        }
    }
}
