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
    let backgroundColor = MainProperties.BGColors.init()
    
    var body: some View {
        Text("\(number)")
            .frame(width: 110, height: 110)
            .font(.system(size: 40, weight: .bold))
            .foregroundColor(backgroundColor.primaryColor)
            .background(backgroundColor.secondaryColor.gradient)
            .clipShape(Circle())
            .padding()
    }
}

struct AnswerButton_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButton(number: 100)
    }
}
