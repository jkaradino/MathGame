//
//  ContentView.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 05.07.23.
//

import SwiftUI

// Content view should show different kind of games and levels
// SINGLE GAME > Level > Short / medium game OR self-timing OR one minute
// Levels: I'm a Stupid (easy), Average, Advanced, Nerd, Super-Nerd
// Type: Timed (set individual) --> goal: score, Up to wrong answer --> score and time, open game until stop
//
//

struct ContentView: View {
    var body: some View {
        SingleMatchNoLim()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
