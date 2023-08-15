//
//  MenuButton.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 22.07.23.
//

import SwiftUI

struct MenuButton: View {
    var buttonText: String
    var ButtonSize: Float = 23
    
    var body: some View {
        Text("\(buttonText)")
            .frame(width: 350, height: 100)
            .background(Color.teal.gradient)
            .font(.system(size: CGFloat(ButtonSize), weight: .bold))
            .foregroundColor(Color.white)

    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(buttonText: "Template")
    }
}
