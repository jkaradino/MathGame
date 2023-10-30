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
        let White = Color.white
        let GrayBlue = Color("GrayBlue")
        let BrightBlue = Color("BrightBlue")
        let StandardBlue = Color("StandardBlue")
        let DarkBlue = Color("DarkBlue")
        let MetallicDarkBlue = Color("MetallicDarkBlue")
        
        // old apporach. Dont delete for old code which is not replaced yet but dont use it anymore
        let primaryColor = Color.white
        let secondaryColor = Color.cyan
        let secondary2Color = Color(red: 0.65, green: 0.8, blue: 1)
        let secondary3Color = Color(red: 0.45, green: 0.7, blue: 1)
        let thirdColor = Color(red: 0.31, green: 0.416, blue: 0.561) //Color.indigo
    }
    struct HeadlineNames {
        let mainTitle = "Choose your game!"
    }
}

struct MainGameSettings {
    var gameDifficulty = ["Noob", "Newbie", "Student", "Nerd", "Expert"]
    var manualTimeLim: Int
    var gameLevelAwards = ["Beginner", "Advanced", "Smart Guy", "Professional", "Game Changer"]
}

class GlobalVariables: ObservableObject {
    /// from CountDownToPlay()
    @Published var CounterIsZero: Bool = false
    @Published var CountDownText: String = "aaa"
    /// MainMathGame()
    @Published var score: Int = 0
    @Published var firstNumber = 0
    @Published var secondNumber = 0
    /// TimerLogic()
    @Published var Seconds = 0
    @Published var Minutes = 0
    @Published var MSeconds = 0
    @Published var finishedGame = false
    //@Published var finishedGameConfirmed = false
    
    /// Game Settings
    @Published var firstTimeLaunch = true
}


