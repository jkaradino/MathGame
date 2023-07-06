//
//  AnswerButton.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 05.07.23.
//

import SwiftUI

// Create a template for an answer button called in ContentView
struct AnswerButton: View {
    var number: Int
    
    var body: some View {
        Text("\(number)")
            .frame(width: 110, height: 110)
            .font(.system(size: 40, weight: .bold))
            .foregroundColor(Color.white)
            .background(Color.mint.gradient)
            .clipShape(Circle())
            .padding()
    }
}

struct AnswerButton_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButton(number: 100)
    }
}
