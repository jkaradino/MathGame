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
    let backgroundColor = MainProperties.BGColors.init()
    //lazy var primaryBGColor = backgroundColor.primaryColor
    
    var body: some View {
        Text("\(buttonText)")
            .frame(width: 350, height: 100)
            .background(backgroundColor.secondaryColor.gradient)
            .font(.system(size: CGFloat(ButtonSize), weight: .bold))
            .foregroundColor(backgroundColor.primaryColor)
            //.clipShape()
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(buttonText: "Template")
    }
}
