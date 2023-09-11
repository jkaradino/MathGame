//
//  MentalMathBrand.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 11.09.23.
//

import SwiftUI

struct MentalMathBrand: View {
    var body: some View {
        let backgroundColor = MainProperties.BGColors.init()
        
        let firstColor = backgroundColor.thirdColor
        let secondColor = backgroundColor.secondaryColor
        let thirdColor = backgroundColor.secondary2Color
        let fourthColor = backgroundColor.secondary3Color
        let shadowRadius: CGFloat = 7
        
        
        let firstSquare = Rectangle().fill(firstColor).frame(width: 200, height: 200).cornerRadius(15).shadow(radius: shadowRadius)
        let secondSquare = Rectangle().fill(secondColor).frame(width: 200, height: 200).cornerRadius(15).shadow(radius: shadowRadius)
        let thirdSquare = Rectangle().fill(thirdColor).frame(width: 200, height: 200).cornerRadius(15).shadow(radius: shadowRadius)
        let fourthSquare = Rectangle().fill(fourthColor).frame(width: 200, height: 200).cornerRadius(15).shadow(radius: shadowRadius)
        
        let spacingStacks: CGFloat = 5
        
        HStack(alignment: .center, spacing: spacingStacks) {
            VStack(alignment: .center, spacing: spacingStacks) {
                ZStack {
                    firstSquare
                    Text("M")
                        .frame(width: 200, height: 200)
                        .font(.system(size: 200))
                }
                ZStack {
                    fourthSquare
                    Text("M")
                        .frame(width: 200, height: 200)
                        .font(.system(size: 200))
                }
            }
            
            VStack(alignment: .center, spacing: spacingStacks) {
                ZStack {
                    thirdSquare
                    Text("enthal")
                        .frame(width: 200, height: 200)
                        .font(.system(size: 70))
                        
                }
                ZStack {
                    secondSquare
                    Text("ath")
                        .frame(width: 200, height: 200)
                        .font(.system(size: 70))
                }
            }
            
        }
        
    }
}

struct MentalMathBrand_Previews: PreviewProvider {
    static var previews: some View {
        MentalMathBrand()
    }
}
