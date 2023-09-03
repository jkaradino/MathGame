//
//  File.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 16.08.23.
//
// this swift file provides all necessary standardized properties used withing this app

import Foundation
import SwiftUI

struct MainProperties
{
    struct BGColors {
        let primaryColor = Color.white
        let secondaryColor = Color.cyan
        let thirdColor = Color(red: 0.31, green: 0.416, blue: 0.561) //Color.indigo
    }
}

class GlobalVariables: ObservableObject {
    // from CountDownToPlay()
    @Published var CounterIsZero: Bool = false
    @Published var CountDownText: String = "aaa"
    // MainMathGame()
    @Published var score: Int = 0
    @Published var firstNumber = 0
    @Published var secondNumber = 0
    // TimerLogic()
    @Published var Seconds = 0
    @Published var Minutes = 0
    
}
