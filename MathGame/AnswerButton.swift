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
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 190, height: 100)
                .foregroundColor(backgroundColor.secondary3Color)
            Text("\(number)")
                //.frame(width: 200, height: 100)
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(backgroundColor.primaryColor)
                //.background(backgroundColor.secondaryColor.gradient)
                .clipShape(Rectangle())
                .padding()
        }
    }
}

struct AnswerButton_Previews: PreviewProvider {
    static var previews: some View {
        AnswerButton(number: 100)
    }
}
