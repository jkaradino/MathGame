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
    
    //
    var body: some View {
        MainMathGame(difficulty: 1000)
    }
}

struct SingleMatchNoLim_Previews: PreviewProvider {
    static var previews: some View {
        //MainMathGame()
        SingleMatchNoLim()
    }
}
