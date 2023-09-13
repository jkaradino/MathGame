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
                        .font(.custom("American Typewriter", size: 70))
                        .font(.system(size: 200))
                        .foregroundColor(Color(red: 0.65, green: 0.8, blue: 1))
                }
                ZStack {
                    fourthSquare
                    Text("M")
                        .frame(width: 200, height: 200)
                        .font(.custom("American Typewriter", size: 200))
                        .font(.system(size: 200))
                        .foregroundColor(Color(red: 0.15, green: 0.3, blue: 0.5))
                }
            }
            
            VStack(alignment: .center, spacing: spacingStacks) {
                ZStack {
                    thirdSquare
                    Text("ental")
                        .frame(width: 200, height: 200)
                        .font(.custom("American Typewriter", size: 70))
                        .font(.system(size: 70))
                        .foregroundColor(backgroundColor.thirdColor)
                }
                ZStack {
                    secondSquare
                    Text("ath")
                        .frame(width: 200, height: 200)
                        .font(.custom("American Typewriter", size: 70))
                        .font(.system(size: 70))
                        .foregroundColor(Color(red: 0.8, green: 0.85, blue: 0.92))
                        
                        
                }
            }
            
        }
        
    }
}

struct MentalMathBrandImage: View {
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
                        .offset(x: 0)
//                    Text("M")
                    Image(systemName: "sum")
                        .frame(width: 200, height: 200)
                        .font(.system(size: 120))
                        .foregroundColor(Color(red: 0.65, green: 0.8, blue: 1))
                }
                
                ZStack {
                    fourthSquare
                    Image(systemName: "x.squareroot")
                        .frame(width: 200, height: 200)
                        .font(.system(size: 125))
                        .foregroundColor(Color(red: 0.15, green: 0.3, blue: 0.5))
                        
                }
            }
            
            VStack(alignment: .center, spacing: spacingStacks) {
                ZStack {
                    thirdSquare
                    Image(systemName: "function")
                        .frame(width: 200, height: 200)
                    
                        .font(.system(size: 125))
                        .foregroundColor(backgroundColor.thirdColor)
                }
                ZStack {
                    secondSquare
                    Image(systemName: "plus.forwardslash.minus")
                        .frame(width: 200, height: 200)
                        //.font(.custom("American Typewriter", size: 70))
                        .font(.system(size: 125))
                        .foregroundColor(Color(red: 0.8, green: 0.85, blue: 0.92))
//                        .foregroundColor(Color(red: 0.9, green: 0.9, blue: 1))
                        
                }
            }
            
        }
        
    }
}

struct MentalMathBrandRotate: View {
    // STATES
    @State var currentAngle: Angle = .degrees(10)
    @State var finalAngle: Angle = .degrees(0)
    
    @State private var timer: Timer? = nil
    @State private var DynSizeOfNumber: Float = 0.0
    @State var MStimer: Timer? = nil
    @State var msec: Int = 0
    
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
        // VAR
        let spacingStacks: CGFloat = 5
        
        HStack(alignment: .center, spacing: spacingStacks) {
            VStack(alignment: .center, spacing: spacingStacks) {
                ZStack {
                    firstSquare
                    VStack {
                        Text("M")
                            .frame(width: 200, height: 200)
                            .font(.custom("American Typewriter", size: 70))
                            .font(.system(size: 200))
                            .foregroundColor(Color(red: 0.65, green: 0.8, blue: 1))
                        //.rotationEffect(currentAngle)
                            .rotationEffect(.degrees(Double(DynSizeOfNumber)))
                    }
                        .onAppear() {
                            SizeOfNumber()
                        }
//                        .gesture(
//                        RotationGesture()
//                            .onChanged { angle in
//                                currentAngle = angle
//                            }
//                            .onEnded { angle in
//                                finalAngle = angle
//                                currentAngle = Angle(degrees: 0)
//                            }
//                        )
                }
                ZStack {
                    fourthSquare
                    Text("M")
                        .frame(width: 200, height: 200)
                        .font(.custom("American Typewriter", size: 200))
                        .font(.system(size: 200))
                        .foregroundColor(Color(red: 0.15, green: 0.3, blue: 0.5))
                }
            }
            
            VStack(alignment: .center, spacing: spacingStacks) {
                ZStack {
                    thirdSquare
                    Text("ental")
                        .frame(width: 200, height: 200)
                        .font(.custom("American Typewriter", size: 70))
                        .font(.system(size: 70))
                        .foregroundColor(backgroundColor.thirdColor)
                }
                ZStack {
                    secondSquare
                    Text("ath")
                        .frame(width: 200, height: 200)
                        .font(.custom("American Typewriter", size: 70))
                        .font(.system(size: 70))
                        .foregroundColor(Color(red: 0.8, green: 0.85, blue: 0.92))
                        
                        
                }
            }
            
        }
        
    }
    
    func SizeOfNumber() {
        //let maxFrameWidth: Int
        //let maxFrameLenght: Int
//        let maxSize: Int = 100
//        let minSize: Int = 0
        
        @State var enableRepeat: Bool = true
        var numberRepeats: Int = 0
        DynSizeOfNumber = 0.0
        
        if numberRepeats > 0 {
            DynSizeOfNumber = 0.0
            //self.stopTimer()
            enableRepeat = false
        }
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: enableRepeat) { tempTimer in
            let factorSize: Float = 1.0
            // Logic for timer counting up
            if self.msec == 360 {
                self.msec = 0
                numberRepeats += 1
                //DynSizeOfNumber = -1
            } else {
                self.msec = self.msec + 1
                DynSizeOfNumber = Float(msec) / factorSize
            }
        }
        
        // OUT
//        var dynFontSize: Int = minSize
//
//
//
//        while (dynFontSize < maxSize) {
//            dynFontSize+=1
//        }
        
        
    }
    
}


struct BrandCaller: View {
    var body: some View {
        VStack {
            //MentalMathBrand()
            MentalMathBrandRotate()
            //MentalMathBrandImage()
        }
    }
}

struct MentalMathBrand_Previews: PreviewProvider {
    static var previews: some View {
        BrandCaller()
    }
}
