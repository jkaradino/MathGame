//
//  MenuButton.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 22.07.23.
//

import SwiftUI

struct MenuButton: View {
    var buttonText: String
    var ButtonSize: Float = 30
    var buttinWidth: CGFloat = 350
    var buttonHeight: CGFloat = 300
    let backgroundColor = MainProperties.BGColors.init()
    //lazy var primaryBGColor = backgroundColor.primaryColor
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: buttinWidth, height: buttonHeight)
                .foregroundColor(backgroundColor.MetallicDarkBlue)
                .shadow(radius: 8)
            Text("\(buttonText)")
                
                //.background(backgroundColor.MetallicDarkBlue.gradient)
                .font(.system(size: CGFloat(ButtonSize), weight: .bold))
                .foregroundColor(backgroundColor.GrayBlue)
                
            //.clipShape()
        }
    }
}

struct MenuButtonOld: View {
    var buttonText: String
    var ButtonSize: Float = 30
    let backgroundColor = MainProperties.BGColors.init()
    //lazy var primaryBGColor = backgroundColor.primaryColor
    
    var body: some View {
        Text("\(buttonText)")
            .frame(width: 350, height: 100)
            .background(backgroundColor.thirdColor.gradient)
            .font(.system(size: CGFloat(ButtonSize), weight: .bold))
            .foregroundColor(backgroundColor.primaryColor)
            .shadow(radius: 8)
            //.clipShape()
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(buttonText: "Template")
    }
}
