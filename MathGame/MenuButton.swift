//
//  MenuButton.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 22.07.23.
//

import SwiftUI

struct MenuButton: View {
    var buttonText: String
    var buttonDescription: String
    var TextSize: Float = 30
    var buttinWidth: CGFloat
    var buttonHeight: CGFloat
    let backgroundColor = MainProperties.BGColors.init()
    //lazy var primaryBGColor = backgroundColor.primaryColor
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: buttinWidth, height: buttonHeight)
                .foregroundColor(backgroundColor.DarkBlue)
                .shadow(radius: 8)
                .opacity(0.9)
            
            VStack {
                Text("\(buttonText)")
                //.background(backgroundColor.MetallicDarkBlue.gradient)
                    //.font(.system(size: CGFloat(TextSize), weight: .bold))
                    .font(.custom("American Typewriter", size: CGFloat(TextSize)))
                    .bold()
                    .foregroundColor(backgroundColor.GrayBlue)
                    .padding(0.1)
                Text("\(buttonDescription)")
                    .italic()
                    .foregroundColor(backgroundColor.BrightBlue)
                
            }
            .frame(width: buttinWidth, height: buttonHeight)
            
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
            .opacity(0.8)
            //.clipShape()
    }
}

struct MenuButton_Previews: PreviewProvider {
    static var previews: some View {
        MenuButton(buttonText: "Template", buttonDescription: "Write a description.", buttinWidth: 350, buttonHeight: 300)
    }
}
