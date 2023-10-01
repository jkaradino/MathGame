//
//  MainLayout.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 16.08.23.
//

import SwiftUI


struct MainLayout: View {
    let backgroundColor = MainProperties.BGColors.init()
    var body: some View {
        ZStack {
            MainLayoutBG()
            Image(systemName: "angle")
                .position(x: 200, y: 200)
                //.frame(width: 20, height: 20)
                .font(.system(size: 50))
                .foregroundColor(Color(red: 0.65, green: 0.8, blue: 1))
                .shadow(radius: 5)
                .rotationEffect(Angle(degrees: -20))
                .rotation3DEffect(.degrees(60), axis: (x: 0, y: 0, z: 0))
            
            Text("f(x)")
                .rotationEffect(Angle(degrees: 40))
                .font(.custom("DancingScript", size: 50))
                .position(x:300, y:200)
                .opacity(0.3)
            
            Image(systemName: "x.squareroot")
            // Noto Sans Adlam Regular
                .font(.custom("Noto Sans Armenian Bold", size: 100))
                .position(x: 100, y: 500)
                //.frame(width: 20, height: 20)
                .font(.system(size: 50))
                .foregroundColor(backgroundColor.GrayBlue)
                .shadow(radius: 5)
                .rotationEffect(Angle(degrees: 0))
                .rotation3DEffect(.degrees(0), axis: (x: 0, y: 0, z: 0))
            
            Image(systemName: "abc")
            // Noto Sans Adlam Regular
                .font(.custom("Noto Sans Armenian Bold", size: 100))
                
        }
    }
}

struct LinearGradientExample: View {
    
    let colors: [Color] = [.purple, .blue, .cyan, .teal]
    
    var body: some View {
        LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}

struct MainLayoutSquares: View {
    let backgroundColor = MainProperties.BGColors.init()
    
    // Fibanocci size
    let widthFibanucci: CGFloat = 21
    let heightFibanucci: CGFloat = 34
    let factorSquareSize: CGFloat = 10
    
    let squareBorderSize: CGFloat = 4
    let circleBorderSize: CGFloat = 10
    
    let scalingFactor = 1
    
    var body: some View {
        
        let arrayFibanocciNum: [Double] = [1, 13/21, 8/21, 5/21, 3/21, 2/21, 1/21, 1/21]
        
        // Squares
        let widthSquare: CGFloat = widthFibanucci * factorSquareSize
        let heightSquare: CGFloat = heightFibanucci * factorSquareSize
        let sizeSquare: CGFloat = widthSquare

        
        // Circles
        let sizeCircle: CGFloat = widthSquare*2

        
        let colors: [Color] = [backgroundColor.DarkBlue, .blue, .teal, backgroundColor.MetallicDarkBlue]
        let squareWidth: CGFloat = 150
        let squareHeight: CGFloat = 230
        let firstOffset: CGFloat = 110
        let rect = RoundedRectangle(cornerRadius: 20)
            .fill(LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom))
            .frame(width: squareWidth*2, height: squareHeight*2, alignment: .center)
            //.frame(width: 100, height: 100, alignment: .center)
            .opacity(0)
            //.stroke(Color.purple, lineWidth: 5)
            .border(LinearGradient(
                colors: [.teal, .blue, .teal, backgroundColor.MetallicDarkBlue],
                startPoint: .top, endPoint: .bottom), width: squareBorderSize)
        
        
        
        ZStack {
            //backgroundColor.DarkBlue
                //.ignoresSafeArea()
            
            LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            ZStack {
                
                ForEach(0..<10) { index in
                    //@State var scale = 1-(index/10)
                    
                    rect
                        .offset(y: firstOffset + CGFloat(index*20))
                        .scaleEffect(Double(1))
                        .opacity(Double(1-(index/10)))
                    
                    //Text("\(scale)")
                }
                
                

//                rect
//                    .offset(y: firstOffset)
//
//                rect
//                    .offset(y: firstOffset+20)
//                    .scaleEffect(0.9)
//
//                rect
//                    .offset(y: firstOffset+40)
//                    .scaleEffect(0.8)
//
//                rect
//                    .offset(y: firstOffset+60)
//                    .scaleEffect(0.7)
//
//                rect
//                    .offset(y: firstOffset + 80)
//                    .scaleEffect(0.6)
                
//                rect
//                    .offset(y: firstOffset + 100)
//                    .scaleEffect(0.5)
//
//                rect
//                    .offset(y: firstOffset + 120)
//                    .scaleEffect(0.4)
//
//                rect
//                    .offset(y: firstOffset + 140)
//                    .scaleEffect(0.3)
//
//                rect
//                    .offset(y: firstOffset + 160)
//                    .scaleEffect(0.2)
                
//                rect
//                    .offset(y: firstOffset + 180)
//                    .scaleEffect(0.1)
                    
                
            }
            .frame(width: sizeSquare, height: sizeSquare)
            //.trim(from: 0.5, to: 1)
            .offset(y: -70)
            .scaleEffect(1.87)
        }
            //.frame(width: widthSquare, height: heightSquare)
            //.fixedSize(horizontal: true, vertical: true)
            //.position(x: 0, y: 0)
            //.ignoresSafeArea()
            //}
            //.scaleEffect(1.87)
        //}
    }
}

struct MainLayoutSquares1: View {
    let backgroundColor = MainProperties.BGColors.init()
    
    // Fibanocci size
    let widthFibanucci: CGFloat = 21
    let heightFibanucci: CGFloat = 34
    let factorSquareSize: CGFloat = 10
    
    let squareBorderSize: CGFloat = 4
    let circleBorderSize: CGFloat = 10
    
    let scalingFactor = 1
    
    var body: some View {
        
        let arrayFibanocciNum: [Double] = [1, 13/21, 8/21, 5/21, 3/21, 2/21, 1/21, 1/21]
        
        // Squares
        let widthSquare: CGFloat = widthFibanucci * factorSquareSize
        let heightSquare: CGFloat = heightFibanucci * factorSquareSize
        let sizeSquare: CGFloat = widthSquare
        let firstSquareXOffset: CGFloat = 0
        let firstSquareYOffset = -heightSquare/2+widthSquare/2
        
        // Circles
        let sizeCircle: CGFloat = widthSquare*2
        let firstCircleYOffset: CGFloat = sizeCircle/4
        let firstCircleXOffset: CGFloat = sizeCircle/4
        
        
        let rectangle = Rectangle().fill(RadialGradient(gradient: Gradient(colors: [backgroundColor.White, backgroundColor.BrightBlue]), center: .center, startRadius: 0, endRadius: widthSquare/2))
            .frame(width: sizeSquare, height: sizeSquare)
            .opacity(1)
            .border(backgroundColor.StandardBlue, width: squareBorderSize)
            
        
        let circleSmall = Circle()
            .trim(from: 0.4, to: 0.75)
            .fill(RadialGradient(gradient: Gradient(colors: [backgroundColor.White, backgroundColor.BrightBlue]), center: .center, startRadius: widthSquare, endRadius: widthSquare-4))
            .frame(width: sizeCircle, height: sizeCircle)
            .offset(x: firstCircleXOffset, y: firstCircleYOffset)
        
        let circleBig = Circle()
            .trim(from: 0.5, to: 0.75)
            .fill(RadialGradient(gradient: Gradient(colors: [backgroundColor.White, backgroundColor.BrightBlue]), center: .center, startRadius: 0, endRadius: 250))
            .frame(width: sizeCircle-circleBorderSize, height: sizeCircle-circleBorderSize)
        //.border(Color.red, width: 5)
            .offset(x: firstCircleXOffset, y: firstCircleYOffset)
        
        //let squareGroup = [rectangle, circleSmall, circleBig] as [Any]
        
        let squareGroup = Group {
            //rectangle
            circleSmall
            circleBig
        }
        
        let colors: [Color] = [backgroundColor.DarkBlue, .blue, .teal, backgroundColor.MetallicDarkBlue]
        let squareWidth: CGFloat = 150
        let squareHeight: CGFloat = 230
        let firstOffset: CGFloat = 110
        let rect = RoundedRectangle(cornerRadius: 20)
            .fill(LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom))
            .frame(width: squareWidth*2, height: squareHeight*2, alignment: .center)
            //.frame(width: 100, height: 100, alignment: .center)
            .opacity(0)
            //.stroke(Color.purple, lineWidth: 5)
            .border(LinearGradient(
                colors: [.teal, .blue, .teal, backgroundColor.MetallicDarkBlue],
                startPoint: .top, endPoint: .bottom), width: squareBorderSize)
        
        
        
        ZStack {
            //backgroundColor.DarkBlue
                //.ignoresSafeArea()
            
            LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            ZStack {

                rect
                    
                    .offset(y: firstOffset)
                    
                rect
                    .offset(y: firstOffset+20)
                    .scaleEffect(0.9)
                    
                
                
                rect
//                    .frame(width: squareWidth*1.6, height: squareHeight*1.6, alignment: .bottom)
                    .offset(y: firstOffset+40)
                    .scaleEffect(0.8)
                    
                
                rect
//                    .frame(width: squareWidth*1.4, height: squareHeight*1.4, alignment: .bottom)
                    .offset(y: firstOffset+60)
                    .scaleEffect(0.7)
                    
                
                rect
//                    .frame(width: squareWidth*1.2, height: squareHeight*1.2, alignment: .bottom)
                    .offset(y: firstOffset + 80)
                    .scaleEffect(0.6)
                    
                
                rect
                    .offset(y: firstOffset + 100)
                    .scaleEffect(0.5)
                    
                
                rect
                    .offset(y: firstOffset + 120)
                    .scaleEffect(0.4)
                    
                
                rect
                    .offset(y: firstOffset + 140)
                    .scaleEffect(0.3)
                
                rect
                    .offset(y: firstOffset + 160)
                    .scaleEffect(0.2)
                
                rect
                    .offset(y: firstOffset + 180)
                    .scaleEffect(0.1)
                    
                
            }
            .frame(width: sizeSquare, height: sizeSquare)
            //.trim(from: 0.5, to: 1)
            .offset(y: -70)
            .scaleEffect(1.87)
        }
            //.frame(width: widthSquare, height: heightSquare)
            //.fixedSize(horizontal: true, vertical: true)
            //.position(x: 0, y: 0)
            //.ignoresSafeArea()
            //}
            //.scaleEffect(1.87)
        //}
    }
}

struct MainLayoutFibanocciLight2: View {
    let backgroundColor = MainProperties.BGColors.init()
    
    // Fibanocci size
    let widthFibanucci: CGFloat = 21
    let heightFibanucci: CGFloat = 34
    let factorSquareSize: CGFloat = 10
    
    let squareBorderSize: CGFloat = 5
    let circleBorderSize: CGFloat = 10
    
    let scalingFactor = 1
    
    var body: some View {
//        let sumFibanocciSize: CGFloat = widthFibanocci + heightFibanocci
        
//        let widthLayout: CGFloat = widthFibanocci * factorLayoutSize // Breite 210px
//        let heightLayout: CGFloat = heightFibanocci * factorLayoutSize
//        let heightLayoutNew: CGFloat = heightLayout
//        let sumLayoutSize: CGFloat = widthLayout + heightLayout
        
        // Squares
        let widthSquare: CGFloat = widthFibanucci * factorSquareSize
        let heightSquare: CGFloat = heightFibanucci * factorSquareSize
        let sizeSquare: CGFloat = widthSquare
        let firstSquareXOffset: CGFloat = 0
        let firstSquareYOffset = -heightSquare/2+widthSquare/2
        
        // Circles
        let sizeCircle: CGFloat = widthSquare*2
        let firstCircleYOffset: CGFloat = sizeCircle/4
        let firstCircleXOffset: CGFloat = sizeCircle/4
        
        let secondSquareSize: CGFloat = 13/21*sizeSquare
        let secondSquareXOffset: CGFloat = -widthSquare/2 + (13/21*widthSquare)/2
        let secondSquareYOffset = widthSquare/2 + (13/21*widthSquare)/2
        
        //let thirdSquareSize: CGFloat = 8/21*sizeSquare
        let thirdSquareXOffset: CGFloat = widthSquare/2 - (8/21*widthSquare)/2
        let thirdSquareYOffset = widthSquare/2 + (13/21*widthSquare) - (8/21*widthSquare)/2
        
        //let fourthSquareSize: CGFloat = 8/21*sizeSquare
        let fourthSquareXOffset: CGFloat = widthSquare/2 - (5/21*widthSquare)/2
        let fourthSquareYOffset = widthSquare/2 + (5/21*widthSquare)/2
        
        //let fifthSquareSize: CGFloat = 8/21*sizeSquare
        let fifthSquareXOffset: CGFloat = widthSquare/2 - (5/21*widthSquare) - (3/21*widthSquare)/2
        let fifthSquareYOffset = widthSquare/2 + (3/21*widthSquare)/2

        //let fifthSquareSize: CGFloat = 8/21*sizeSquare
        let sixthSquareXOffset: CGFloat = widthSquare/2 - (5/21*widthSquare) - (3/21*widthSquare) + (2/21*widthSquare)/2
        let sixthSquareYOffset = widthSquare/2 + (3/21*widthSquare) + (2/21*widthSquare)/2
        
        let seventhSquareXOffset: CGFloat = widthSquare/2 - (5/21*widthSquare) - (1/21*widthSquare)/2
        let seventhSquareYOffset = widthSquare/2 + (3/21*widthSquare) + (2/21*widthSquare)/2 + (1/21*widthSquare)/2
        
        let eightSquareYOffset = widthSquare/2 + (3/21*widthSquare) + (1/21*widthSquare)/2
        
        
        let rectangle = Rectangle().fill(backgroundColor.StandardBlue).frame(width: sizeSquare, height: sizeSquare)
            .opacity(1)
            .border(backgroundColor.StandardBlue, width: squareBorderSize)
        
        let circleSmall = Circle()
            .trim(from: 0.4, to: 0.75)
            //.fill(RadialGradient(gradient: Gradient(colors: [backgroundColor.DarkBlue, backgroundColor.StandardBlue]), center: .center, startRadius: widthSquare, endRadius: widthSquare-4))
            .fill(Color.blue)
            .opacity(0.3)
//            .border(Color.red, 5)
            //.border(5)
            .frame(width: sizeCircle, height: sizeCircle)
            .offset(x: firstCircleXOffset, y: firstCircleYOffset)
        
        let circleBig = Circle()
            .trim(from: 0.5, to: 0.75)
            //.fill(RadialGradient(gradient: Gradient(colors: [backgroundColor.StandardBlue, backgroundColor.StandardBlue]), center: .center, startRadius: 0, endRadius: 250))
            .frame(width: sizeCircle-circleBorderSize, height: sizeCircle-circleBorderSize)
            //.opacity(0.5)
        //.border(Color.red, width: 5)
            .offset(x: firstCircleXOffset, y: firstCircleYOffset)
        
        //let squareGroup = [rectangle, circleSmall, circleBig] as [Any]
        
        let squareGroup = Group {
            rectangle
            circleSmall
            //circleBig
        }
        
        let colors: [Color] = [backgroundColor.DarkBlue, .blue, .teal, backgroundColor.MetallicDarkBlue]
        
        ZStack {
            LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
//            RadialGradient(gradient: Gradient(colors: [backgroundColor.DarkBlue, backgroundColor.BrightBlue, backgroundColor.StandardBlue, backgroundColor.StandardBlue, backgroundColor.DarkBlue]), center: .center, startRadius: 0, endRadius: 470)
//                .ignoresSafeArea()
            
            
            //LinearGradient(colors: [backgroundColor.DarkBlue, backgroundColor.MetallicDarkBlue], startPoint: 0, endPoint: 50)
            
            ZStack {
                backgroundColor.StandardBlue
                    .frame(width: widthSquare, height: widthSquare)
                    .border(Color.black, width: 5)
                    
                
                
                squareGroup
                Group {
                    squareGroup
                        .scaleEffect(13/21)
                    squareGroup
                        .scaleEffect(8/21)
                    squareGroup
                        .scaleEffect(5/21)
                    squareGroup
                        .scaleEffect(3/21)
                    squareGroup
                        .scaleEffect(1/21)
                    squareGroup
                        .scaleEffect(1/21)
                }
                .offset(x: 30, y: 30)
        
                
                squareGroup
                    .rotationEffect(.degrees(270))
                    .scaleEffect(13/21)
                    .offset(x: secondSquareXOffset, y: secondSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(180))
                    .scaleEffect(8/21)
                    .offset(x: thirdSquareXOffset, y: thirdSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(90))
                    .scaleEffect(5/21)
                    .offset(x: fourthSquareXOffset, y: fourthSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(0))
                    .scaleEffect(3/21)
                    .offset(x: fifthSquareXOffset, y: fifthSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(270))
                    .scaleEffect(2/21)
                    .offset(x: sixthSquareXOffset, y: sixthSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(180))
                    .scaleEffect(1/21)
                    .offset(x: seventhSquareXOffset, y: seventhSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(90))
                    .scaleEffect(1/21)
                    .offset(x: seventhSquareXOffset, y: eightSquareYOffset)
                
                
                
            }
            .frame(width: sizeSquare, height: sizeSquare)
            //.trim(from: 0.5, to: 1)
            .offset(y: -70)
            .scaleEffect(1.87)
        }
            //.frame(width: widthSquare, height: heightSquare)
            //.fixedSize(horizontal: true, vertical: true)
            //.position(x: 0, y: 0)
            //.ignoresSafeArea()
            //}
            //.scaleEffect(1.87)
        //}
    }
}

struct MainLayoutFibanocciLight1: View {
    let backgroundColor = MainProperties.BGColors.init()
    
    // Fibanocci size
    let widthFibanucci: CGFloat = 21
    let heightFibanucci: CGFloat = 34
    let factorSquareSize: CGFloat = 10
    
    let squareBorderSize: CGFloat = 5
    let circleBorderSize: CGFloat = 10
    
    let scalingFactor = 1
    
    var body: some View {
//        let sumFibanocciSize: CGFloat = widthFibanocci + heightFibanocci
        
//        let widthLayout: CGFloat = widthFibanocci * factorLayoutSize // Breite 210px
//        let heightLayout: CGFloat = heightFibanocci * factorLayoutSize
//        let heightLayoutNew: CGFloat = heightLayout
//        let sumLayoutSize: CGFloat = widthLayout + heightLayout
        
        // Squares
        let widthSquare: CGFloat = widthFibanucci * factorSquareSize
        let heightSquare: CGFloat = heightFibanucci * factorSquareSize
        let sizeSquare: CGFloat = widthSquare
        let firstSquareXOffset: CGFloat = 0
        let firstSquareYOffset = -heightSquare/2+widthSquare/2
        
        // Circles
        let sizeCircle: CGFloat = widthSquare*2
        let firstCircleYOffset: CGFloat = sizeCircle/4
        let firstCircleXOffset: CGFloat = sizeCircle/4
        
        let secondSquareSize: CGFloat = 13/21*sizeSquare
        let secondSquareXOffset: CGFloat = -widthSquare/2 + (13/21*widthSquare)/2
        let secondSquareYOffset = widthSquare/2 + (13/21*widthSquare)/2
        
        //let thirdSquareSize: CGFloat = 8/21*sizeSquare
        let thirdSquareXOffset: CGFloat = widthSquare/2 - (8/21*widthSquare)/2
        let thirdSquareYOffset = widthSquare/2 + (13/21*widthSquare) - (8/21*widthSquare)/2
        
        //let fourthSquareSize: CGFloat = 8/21*sizeSquare
        let fourthSquareXOffset: CGFloat = widthSquare/2 - (5/21*widthSquare)/2
        let fourthSquareYOffset = widthSquare/2 + (5/21*widthSquare)/2
        
        //let fifthSquareSize: CGFloat = 8/21*sizeSquare
        let fifthSquareXOffset: CGFloat = widthSquare/2 - (5/21*widthSquare) - (3/21*widthSquare)/2
        let fifthSquareYOffset = widthSquare/2 + (3/21*widthSquare)/2

        //let fifthSquareSize: CGFloat = 8/21*sizeSquare
        let sixthSquareXOffset: CGFloat = widthSquare/2 - (5/21*widthSquare) - (3/21*widthSquare) + (2/21*widthSquare)/2
        let sixthSquareYOffset = widthSquare/2 + (3/21*widthSquare) + (2/21*widthSquare)/2
        
        let seventhSquareXOffset: CGFloat = widthSquare/2 - (5/21*widthSquare) - (1/21*widthSquare)/2
        let seventhSquareYOffset = widthSquare/2 + (3/21*widthSquare) + (2/21*widthSquare)/2 + (1/21*widthSquare)/2
        
        let eightSquareYOffset = widthSquare/2 + (3/21*widthSquare) + (1/21*widthSquare)/2
        
        
        let rectangle = Rectangle().fill(backgroundColor.StandardBlue).frame(width: sizeSquare, height: sizeSquare)
            .opacity(1)
            .border(backgroundColor.StandardBlue, width: squareBorderSize)
        
        let circleSmall = Circle()
            .trim(from: 0.4, to: 0.75)
            .fill(RadialGradient(gradient: Gradient(colors: [backgroundColor.DarkBlue, backgroundColor.StandardBlue]), center: .center, startRadius: widthSquare, endRadius: widthSquare-4))
            .frame(width: sizeCircle, height: sizeCircle)
            .offset(x: firstCircleXOffset, y: firstCircleYOffset)
        
        let circleBig = Circle()
            .trim(from: 0.5, to: 0.75)
            .fill(RadialGradient(gradient: Gradient(colors: [backgroundColor.StandardBlue, backgroundColor.StandardBlue]), center: .center, startRadius: 0, endRadius: 250))
            .frame(width: sizeCircle-circleBorderSize, height: sizeCircle-circleBorderSize)
        //.border(Color.red, width: 5)
            .offset(x: firstCircleXOffset, y: firstCircleYOffset)
        
        //let squareGroup = [rectangle, circleSmall, circleBig] as [Any]
        
        let squareGroup = Group {
            rectangle
            circleSmall
            circleBig
        }
        
        ZStack {
            backgroundColor.DarkBlue
                .ignoresSafeArea()
            
            RadialGradient(gradient: Gradient(colors: [backgroundColor.DarkBlue, backgroundColor.BrightBlue, backgroundColor.StandardBlue, backgroundColor.StandardBlue, backgroundColor.DarkBlue]), center: .center, startRadius: 0, endRadius: 470)
                .ignoresSafeArea()
            
            
            //LinearGradient(colors: [backgroundColor.DarkBlue, backgroundColor.MetallicDarkBlue], startPoint: 0, endPoint: 50)
            
            ZStack {
                backgroundColor.StandardBlue
                    .frame(width: widthSquare, height: widthSquare)
                    .border(Color.black, width: 5)
                    
                
                
                squareGroup
                Group {
                    squareGroup
                        .scaleEffect(13/21)
                    squareGroup
                        .scaleEffect(8/21)
                    squareGroup
                        .scaleEffect(5/21)
                    squareGroup
                        .scaleEffect(3/21)
                    squareGroup
                        .scaleEffect(1/21)
                    squareGroup
                        .scaleEffect(1/21)
                }
                .offset(x: 30, y: 30)
        
                
                squareGroup
                    .rotationEffect(.degrees(270))
                    .scaleEffect(13/21)
                    .offset(x: secondSquareXOffset, y: secondSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(180))
                    .scaleEffect(8/21)
                    .offset(x: thirdSquareXOffset, y: thirdSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(90))
                    .scaleEffect(5/21)
                    .offset(x: fourthSquareXOffset, y: fourthSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(0))
                    .scaleEffect(3/21)
                    .offset(x: fifthSquareXOffset, y: fifthSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(270))
                    .scaleEffect(2/21)
                    .offset(x: sixthSquareXOffset, y: sixthSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(180))
                    .scaleEffect(1/21)
                    .offset(x: seventhSquareXOffset, y: seventhSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(90))
                    .scaleEffect(1/21)
                    .offset(x: seventhSquareXOffset, y: eightSquareYOffset)
                
                
                
            }
            .frame(width: sizeSquare, height: sizeSquare)
            //.trim(from: 0.5, to: 1)
            .offset(y: -70)
            .scaleEffect(1.87)
        }
            //.frame(width: widthSquare, height: heightSquare)
            //.fixedSize(horizontal: true, vertical: true)
            //.position(x: 0, y: 0)
            //.ignoresSafeArea()
            //}
            //.scaleEffect(1.87)
        //}
    }
}

struct MainLayoutFibanocciLightSave: View {
    let backgroundColor = MainProperties.BGColors.init()
    
    // Fibanocci size
    let widthFibanucci: CGFloat = 21
    let heightFibanucci: CGFloat = 34
    let factorSquareSize: CGFloat = 10
    
    let squareBorderSize: CGFloat = 5
    let circleBorderSize: CGFloat = 5
    
    let scalingFactor = 1
    
    var body: some View {
//        let sumFibanocciSize: CGFloat = widthFibanocci + heightFibanocci
        
//        let widthLayout: CGFloat = widthFibanocci * factorLayoutSize // Breite 210px
//        let heightLayout: CGFloat = heightFibanocci * factorLayoutSize
//        let heightLayoutNew: CGFloat = heightLayout
//        let sumLayoutSize: CGFloat = widthLayout + heightLayout
        
        // Squares
        let widthSquare: CGFloat = widthFibanucci * factorSquareSize
        let heightSquare: CGFloat = heightFibanucci * factorSquareSize
        let sizeSquare: CGFloat = widthSquare
        let firstSquareXOffset: CGFloat = 0
        let firstSquareYOffset = -heightSquare/2+widthSquare/2
        
        // Circles
        let sizeCircle: CGFloat = widthSquare*2
        let firstCircleYOffset: CGFloat = sizeCircle/4
        let firstCircleXOffset: CGFloat = sizeCircle/4
        
        let secondSquareSize: CGFloat = 13/21*sizeSquare
        let secondSquareXOffset: CGFloat = -widthSquare/2 + (13/21*widthSquare)/2
        let secondSquareYOffset = widthSquare/2 + (13/21*widthSquare)/2
        
        //let thirdSquareSize: CGFloat = 8/21*sizeSquare
        let thirdSquareXOffset: CGFloat = widthSquare/2 - (8/21*widthSquare)/2
        let thirdSquareYOffset = widthSquare/2 + (13/21*widthSquare) - (8/21*widthSquare)/2
        
        //let fourthSquareSize: CGFloat = 8/21*sizeSquare
        let fourthSquareXOffset: CGFloat = widthSquare/2 - (5/21*widthSquare)/2
        let fourthSquareYOffset = widthSquare/2 + (5/21*widthSquare)/2
        
        //let fifthSquareSize: CGFloat = 8/21*sizeSquare
        let fifthSquareXOffset: CGFloat = widthSquare/2 - (5/21*widthSquare) - (3/21*widthSquare)/2
        let fifthSquareYOffset = widthSquare/2 + (3/21*widthSquare)/2

        //let fifthSquareSize: CGFloat = 8/21*sizeSquare
        let sixthSquareXOffset: CGFloat = widthSquare/2 - (5/21*widthSquare) - (3/21*widthSquare) + (2/21*widthSquare)/2
        let sixthSquareYOffset = widthSquare/2 + (3/21*widthSquare) + (2/21*widthSquare)/2
        
        let seventhSquareXOffset: CGFloat = widthSquare/2 - (5/21*widthSquare) - (1/21*widthSquare)/2
        let seventhSquareYOffset = widthSquare/2 + (3/21*widthSquare) + (2/21*widthSquare)/2 + (1/21*widthSquare)/2
        
        let eightSquareYOffset = widthSquare/2 + (3/21*widthSquare) + (1/21*widthSquare)/2
        
        
        let rectangle = Rectangle().fill(backgroundColor.StandardBlue).frame(width: sizeSquare, height: sizeSquare)
            .opacity(1)
            .border(backgroundColor.StandardBlue, width: squareBorderSize)
        
        let circleSmall = Circle()
            .trim(from: 0.5, to: 0.75)
            .fill(backgroundColor.White)
            .frame(width: sizeCircle, height: sizeCircle)
            .offset(x: firstCircleXOffset, y: firstCircleYOffset)
        
        let circleBig = Circle()
            .trim(from: 0.3, to: 0.75)
            .fill(RadialGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple]), center: .center, startRadius: 50, endRadius: 100))
            .frame(width: sizeCircle-10, height: sizeCircle-10)
        //.border(Color.red, width: 5)
            .offset(x: firstCircleXOffset, y: firstCircleYOffset)
        
        //let squareGroup = [rectangle, circleSmall, circleBig] as [Any]
        
        let squareGroup = Group {
            rectangle
            circleSmall
            circleBig
        }
        
        ZStack {

            ZStack {
                Color.white
                    .frame(width: widthSquare, height: widthSquare)
                    .border(Color.black, width: 5)
                
                
                squareGroup
                Group {
                    squareGroup
                        .scaleEffect(13/21)
                    squareGroup
                        .scaleEffect(8/21)
                    squareGroup
                        .scaleEffect(5/21)
                    squareGroup
                        .scaleEffect(3/21)
                    squareGroup
                        .scaleEffect(1/21)
                    squareGroup
                        .scaleEffect(1/21)
                }
                .offset(x: 30, y: 30)
        
                
                squareGroup
                    .rotationEffect(.degrees(270))
                    .scaleEffect(13/21)
                    .offset(x: secondSquareXOffset, y: secondSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(180))
                    .scaleEffect(8/21)
                    .offset(x: thirdSquareXOffset, y: thirdSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(90))
                    .scaleEffect(5/21)
                    .offset(x: fourthSquareXOffset, y: fourthSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(0))
                    .scaleEffect(3/21)
                    .offset(x: fifthSquareXOffset, y: fifthSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(270))
                    .scaleEffect(2/21)
                    .offset(x: sixthSquareXOffset, y: sixthSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(180))
                    .scaleEffect(1/21)
                    .offset(x: seventhSquareXOffset, y: seventhSquareYOffset)
                
                squareGroup
                    .rotationEffect(.degrees(90))
                    .scaleEffect(1/21)
                    .offset(x: seventhSquareXOffset, y: eightSquareYOffset)
                
                
                
            }  // First square
            .frame(width: sizeSquare, height: sizeSquare)
            //.trim(from: 0.5, to: 1)
            
            

            
            
            
            /// old code
            
//            ZStack {
//                Group {
//                    Rectangle()
//                        .fill(backgroundColor.BrightBlue.gradient)
//                        .border(Color.blue, width: squareBorderSize)
//                        .frame(width: secondSquareSize, height: secondSquareSize)
//
//                    Circle()
//                        .trim(from: 0.499, to: 0.76)
//                        .fill(Color.blue.gradient)
//                        .frame(width: secondCircleSize, height: secondCircleSize)
//                    //.border(Color.red, width: 5)
//                        .offset(x: secondCircleXOffset, y: secondCircleYOffset)
//                        .rotationEffect(.degrees(270))
//
//                    Circle()
//                        .trim(from: 0.4, to: 1)
//                        .fill(backgroundColor.BrightBlue.gradient)
//                        .frame(width: secondCircleSize-10, height: secondCircleSize-10)
//                    //.border(Color.red, width: 5)
//                        .offset(x: secondCircleXOffset, y: secondCircleYOffset)
//                        .rotationEffect(.degrees(270))
//
//                    //                    Text("Second Rectangle\nr: \(Int(secondSquareSize))\nrFib: 13\nOffset: x: \(Int(secondSquareXOffset)) y: \(Int(secondSquareYOffset))")
//                    //                        .font(.system(size: 20))
//
//                }
//                .offset(x: secondSquareXOffset, y: secondSquareYOffset)
//            } // Second square
//            .frame(width: secondSquareSize, height: secondSquareSize)
//
//            ZStack {
//                Group {
//                    Rectangle()
//                        .fill(backgroundColor.BrightBlue.gradient)
//                        .border(Color.blue, width: squareBorderSize)
//                        .frame(width: thirdSquareSize, height: thirdSquareSize)
//
//                    //                    Text("Third Rectangle\nr: \(Int(thirdSquareSize))\nrFib: 8\nOffset: x: \(Int(thirdSquareXOffset)) y: \(Int(thirdSquareYOffset))")
//                    //                        .font(.system(size: 15))
//
//                    Circle()
//                        .trim(from: 0.3999, to: 0.77)
//                        .fill(Color.blue)
//                        .frame(width: thirdCircleSize, height: thirdCircleSize)
//                    //.border(Color.red, width: 5)
//                        .offset(x: thirdCircleXOffset, y: thirdCircleYOffset)
//                        .rotationEffect(.degrees(180))
//
//                    Circle()
//                        .trim(from: 0, to: 1)
//                        .fill(backgroundColor.BrightBlue)
//                        .frame(width: thirdCircleSize-10, height: thirdCircleSize-10)
//                    //.border(Color.red, width: 5)
//                        .offset(x: thirdCircleXOffset, y: thirdCircleYOffset)
//                        .rotationEffect(.degrees(180))
//
//
//                }
//                .offset(x: thirdSquareXOffset, y: thirdSquareYOffset)
//            } // Third square
//
//            ZStack {
//                Group {
//                    Rectangle()
//                        .fill(backgroundColor.BrightBlue.gradient)
//                        .border(Color.blue, width: squareBorderSize)
//                        .frame(width: fourthSquareSize, height: fourthSquareSize)
//
//                    //                    Text("Fourth Rectangle\nr: \(Int(fourthSquareSize))\nrFib: 5\nOffset: x: \(Int(fourthSquareXOffset)) y: \(Int(fourthSquareYOffset))")
//                    //                        .font(.system(size: 9))
//
//                    Circle()
//                        .trim(from: 0.4, to: 0.76)
//                        .fill(Color.blue)
//                        .frame(width: fourthCircleSize, height: fourthCircleSize)
//                    //.border(Color.red, width: 5)
//                        .offset(x: fourthCircleXOffset, y: fourthCircleYOffset)
//                        .rotationEffect(.degrees(90))
//
//                    Circle()
//                    //.trim(from: 0.5, to: 0.75)
//                        .fill(backgroundColor.BrightBlue)
//                        .frame(width: fourthCircleSize-10, height: fourthCircleSize-10)
//                    //.border(Color.red, width: 5)
//                        .offset(x: fourthCircleXOffset, y: fourthCircleYOffset)
//                        .rotationEffect(.degrees(90))
//
//                }
//                .offset(x: fourthSquareXOffset, y: fourthSquareYOffset)
//            } // Fourth square
//
//            ZStack {
//                Group {
//                    Rectangle()
//                        .fill(backgroundColor.BrightBlue)
//                        .border(Color.blue, width: squareBorderSize)
//                        .frame(width: fifthSquareSize, height: fifthSquareSize)
//
//                    //                    Text("Fifth Rectangle\nr: \(Int(fifthSquareSize))\nrFib: 3\nOffset: x: \(Int(fifthSquareXOffset)) y: \(Int(fifthSquareYOffset))")
//                    //                        .font(.system(size: 5))
//
//                    Circle()
//                        .trim(from: 0.38, to: 0.76)
//                        .fill(Color.blue)
//                        .frame(width: fifthCircleSize, height: fifthCircleSize)
//                    //.border(Color.red, width: 5)
//                        .offset(x: fifthCircleXOffset, y: fifthCircleYOffset)
//                        .rotationEffect(.degrees(0))
//
//                    Circle()
//                        .trim(from: 0, to: 1)
//                        .fill(backgroundColor.BrightBlue)
//                        .frame(width: fifthCircleSize-10, height: fifthCircleSize-10)
//                    //.border(Color.red, width: 5)
//                        .offset(x: fifthCircleXOffset, y: fifthCircleYOffset)
//                        .rotationEffect(.degrees(0))
//
//                }
//                .offset(x: fifthSquareXOffset, y: fifthSquareYOffset)
//            } // Fifth square
//
//            ZStack {
//                Group {
//                    Rectangle()
//                        .fill(backgroundColor.BrightBlue)
//                        .border(Color.blue, width: squareBorderSize)
//                        .frame(width: sixthSquareSize, height: sixthSquareSize)
//
//                    //                    Text("Sixth Rectangle\nr: \(Int(sixthSquareSize))\nrFib: 2\nOffset: x: \(Int(sixthSquareXOffset)) y: \(Int(sixthSquareYOffset))")
//                    //                        .font(.system(size: 3.5))
//
//                    Circle()
//                        .trim(from: 0.42, to: 0.8)
//                        .fill(Color.blue)
//                        .frame(width: sixthCircleSize, height: sixthCircleSize)
//                    //.border(Color.red, width: 5)
//                        .offset(x: sixthCircleXOffset, y: sixthCircleYOffset)
//                        .rotationEffect(.degrees(270))
//
//                    Circle()
//                        .trim(from: 0, to: 1)
//                        .fill(backgroundColor.BrightBlue)
//                        .frame(width: sixthCircleSize-10, height: sixthCircleSize-10)
//                    //.border(Color.red, width: 5)
//                        .offset(x: sixthCircleXOffset, y: sixthCircleYOffset)
//                        .rotationEffect(.degrees(270))
//
//
//                }
//                .offset(x: sixthSquareXOffset, y: sixthSquareYOffset)
//            } // Sixth square
//
//            ZStack {
//                Group {
//                    Rectangle()
//                        .fill(backgroundColor.BrightBlue)
//                        .border(Color.blue, width: squareBorderSize)
//                        .frame(width: lastASquareSize, height: lastASquareSize)
//
//                    //                    Text("r: \(Int(lastASquareSize))\nrFib: 2\nOffset: x: \(Int(lastASquareXOffset)) \ny: \(Int(lastASquareYOffset))")
//                    //                        .font(.system(size: 2.5))
//
//                    Circle()
//                        .trim(from: 0.5, to: 0.85)
//                        .fill(Color.blue)
//                        .frame(width: lastCircleSize, height: lastCircleSize)
//                    //.border(Color.red, width: 5)
//                        .offset(x: lastCircleXOffset, y: lastCircleYOffset)
//                        .rotationEffect(.degrees(180))
//
//                    Circle()
//                        .trim(from: 0, to: 1)
//                        .fill(backgroundColor.BrightBlue)
//                        .frame(width: lastCircleSize-10, height: lastCircleSize-10)
//                    //.border(Color.red, width: 5)
//                        .offset(x: lastCircleXOffset, y: lastCircleYOffset)
//                        .rotationEffect(.degrees(180))
//
//
//                }
//                .offset(x: lastASquareXOffset, y: lastASquareYOffset)
//            } // 1x1 A square
//
//            ZStack {
//                Group {
//                    Rectangle()
//                        .fill(backgroundColor.BrightBlue)
//                        .border(Color.blue, width: squareBorderSize)
//                        .frame(width: lastBSquareSize, height: lastBSquareSize)
//
//                    //                    Text("r: \(Int(lastBSquareSize))\nrFib: 1\nOffset: x: \(Int(lastBSquareXOffset)) \ny: \(Int(lastBSquareYOffset))")
//                    //                        .font(.system(size: 2.5))
//
//                    Circle()
//                        .trim(from: 0.5, to: 75)
//                        .fill(Color.blue)
//                        .frame(width: lastCircleSize, height: lastCircleSize)
//                    //.border(Color.red, width: 5)
//                        .offset(x: lastCircleXOffset, y: lastCircleYOffset)
//                        .rotationEffect(.degrees(90))
//
//                    Circle()
//                        .trim(from: 0, to: 1)
//                        .fill(backgroundColor.BrightBlue)
//                        .frame(width: lastCircleSize-10, height: lastCircleSize-10)
//                    //.border(Color.red, width: 5)
//                        .offset(x: lastCircleXOffset, y: lastCircleYOffset)
//                        .rotationEffect(.degrees(90))
//
//                }
//                .offset(x: lastBSquareXOffset, y: lastBSquareYOffset)
//            } // 1x1 B square
//
            //Circle().fill(Color.green).frame(width: 120, height: 120)
            //.position(x:0, y: 0)
            
            //Text("13/21: \n \(0.619)")
            
            
        }
            .frame(width: widthSquare, height: heightSquare)
            //.fixedSize(horizontal: true, vertical: true)
            //.position(x: 0, y: 0)
            //.ignoresSafeArea()
            //}
            .scaleEffect(1)
        //}
    }
}

struct MainLayoutFibanocci: View {
    let backgroundColor = MainProperties.BGColors.init()
    
    
    // Frame size
    let widthLayoutMax: CGFloat = 393
    //let heightLayout: CGFloat = 700 // not to be used
    
    // Fibanocci size
    let widthFibanocci: CGFloat = 21
    let heightFibanocci: CGFloat = 34
    let factorLayoutSize: CGFloat = 10
    
    let squareBorderSize: CGFloat = 0
    
    var body: some View {
//        let sumFibanocciSize: CGFloat = widthFibanocci + heightFibanocci
        
        let widthLayout: CGFloat = widthFibanocci * factorLayoutSize // Breite 210px
        let heightLayout: CGFloat = heightFibanocci * factorLayoutSize
        let heightLayoutNew: CGFloat = heightLayout
        let sumLayoutSize: CGFloat = widthLayout + heightLayout
        
        // Squares
        let firstSquareSize: CGFloat = widthLayout
        let firstSquareXOffset: CGFloat = 0
        let firstSquareYOffset = -heightLayout/2+widthLayout/2
        
        let secondSquareSize: CGFloat = 13/21*widthLayout
        let secondSquareXOffset: CGFloat = -40
        let secondSquareYOffset = heightLayout/2 - (heightLayout-widthLayout)/2
        
        let thirdSquareSize: CGFloat = 8/21*widthLayout
        let thirdSquareXOffset: CGFloat = 65
        let thirdSquareYOffset = heightLayout/2 - (heightLayout-widthLayout)/2 + 25
        
        let fourthSquareSize: CGFloat = 5/21*widthLayout
        let fourthSquareXOffset: CGFloat = 80
        let fourthSquareYOffset = heightLayout/2 - (heightLayout-widthLayout)/2 - (heightLayout-widthLayout)/2 + 25
        
        let fifthSquareSize: CGFloat = 3/21*widthLayout
        let fifthSquareXOffset: CGFloat = 40
        let fifthSquareYOffset = heightLayout/2 - (heightLayout-widthLayout)/2 - (heightLayout-widthLayout)/2 + 15
        
        let sixthSquareSize: CGFloat = 2/21*widthLayout
        let sixthSquareXOffset: CGFloat = 35
        let sixthSquareYOffset = heightLayoutNew/2 - (heightLayoutNew-widthLayout)/2 - 25
        
        let lastASquareSize: CGFloat = 1/21*widthLayout
        let lastASquareXOffset: CGFloat = 50
        let lastASquareYOffset = heightLayoutNew/2 - (heightLayoutNew-widthLayout)/2 - 20
        
        let lastBSquareSize: CGFloat = 1/21*widthLayout
        let lastBSquareXOffset: CGFloat = 50
        let lastBSquareYOffset = heightLayoutNew/2 - (heightLayoutNew-widthLayout)/2 - 30
        
        
        // Circles
        let firstCircleSize: CGFloat = widthLayout*2
        let firstCircleYOffset: CGFloat = firstCircleSize/4
        let firstCircleXOffset: CGFloat = firstCircleSize/4
        
        let secondCircleSize: CGFloat = secondSquareSize * 2
        let secondCircleYOffset: CGFloat = secondCircleSize/4
        let secondCircleXOffset: CGFloat = secondCircleSize/4
        
        let thirdCircleSize: CGFloat = thirdSquareSize * 2
        let thirdCircleYOffset: CGFloat = thirdCircleSize/4
        let thirdCircleXOffset: CGFloat = thirdCircleSize/4
        
        let fourthCircleSize: CGFloat = fourthSquareSize * 2
        let fourthCircleYOffset: CGFloat = fourthCircleSize/4
        let fourthCircleXOffset: CGFloat = fourthCircleSize/4
        
        let fifthCircleSize: CGFloat = fifthSquareSize * 2
        let fifthCircleYOffset: CGFloat = fifthCircleSize/4
        let fifthCircleXOffset: CGFloat = fifthCircleSize/4
        
        let sixthCircleSize: CGFloat = sixthSquareSize * 2
        let sixthCircleYOffset: CGFloat = sixthCircleSize/4
        let sixthCircleXOffset: CGFloat = sixthCircleSize/4
        
        let lastCircleSize: CGFloat = lastASquareSize * 2
        let lastCircleYOffset: CGFloat = lastCircleSize/4
        let lastCircleXOffset: CGFloat = lastCircleSize/4

        //ZStack {
            //MainLayout()
        ZStack {
            Color.red
                .frame(width: widthLayout, height: heightLayoutNew)
            
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.StandardBlue.gradient)
                        .frame(width: firstSquareSize, height: firstSquareSize)
                        .border(Color.blue, width: squareBorderSize)
                    
                    Circle()
                        .trim(from: 0.5, to: 0.75)
                        .fill(Color.blue.gradient)
                        .frame(width: firstCircleSize, height: firstCircleSize)
                    //.border(Color.red, width: 5)
                        .offset(x: firstCircleXOffset, y: firstCircleYOffset)
                    
                    Circle()
                        .trim(from: 0.5, to: 0.75)
                        .fill(backgroundColor.BrightBlue)
                        .frame(width: firstCircleSize-10, height: firstCircleSize-10)
                    //.border(Color.red, width: 5)
                        .offset(x: firstCircleXOffset, y: firstCircleYOffset)
                    
                    //                    Text("First Rectangle\nr: \(Int(firstSquareSize))\nrFib: 21\nOffset: x: \(Int(firstSquareXOffset)) y: \(Int(firstSquareYOffset))")
                    //                        .font(.system(size: 20))
                    
                }
                .offset(x: firstSquareXOffset, y: firstSquareYOffset)
                //.trim(from: 0.5, to: 1)
            }  // First square
            .frame(width: firstSquareSize, height: firstSquareSize)
            //.trim(from: 0.5, to: 1)
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.BrightBlue.gradient)
                        .border(Color.blue, width: squareBorderSize)
                        .frame(width: secondSquareSize, height: secondSquareSize)
                    
                    Circle()
                        .trim(from: 0.499, to: 0.76)
                        .fill(Color.blue.gradient)
                        .frame(width: secondCircleSize, height: secondCircleSize)
                    //.border(Color.red, width: 5)
                        .offset(x: secondCircleXOffset, y: secondCircleYOffset)
                        .rotationEffect(.degrees(270))
                    
                    Circle()
                        .trim(from: 0.4, to: 1)
                        .fill(backgroundColor.BrightBlue.gradient)
                        .frame(width: secondCircleSize-10, height: secondCircleSize-10)
                    //.border(Color.red, width: 5)
                        .offset(x: secondCircleXOffset, y: secondCircleYOffset)
                        .rotationEffect(.degrees(270))
                    
                    //                    Text("Second Rectangle\nr: \(Int(secondSquareSize))\nrFib: 13\nOffset: x: \(Int(secondSquareXOffset)) y: \(Int(secondSquareYOffset))")
                    //                        .font(.system(size: 20))
                    
                }
                .offset(x: secondSquareXOffset, y: secondSquareYOffset)
            } // Second square
            .frame(width: secondSquareSize, height: secondSquareSize)
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.BrightBlue.gradient)
                        .border(Color.blue, width: squareBorderSize)
                        .frame(width: thirdSquareSize, height: thirdSquareSize)
                    
                    //                    Text("Third Rectangle\nr: \(Int(thirdSquareSize))\nrFib: 8\nOffset: x: \(Int(thirdSquareXOffset)) y: \(Int(thirdSquareYOffset))")
                    //                        .font(.system(size: 15))
                    
                    Circle()
                        .trim(from: 0.3999, to: 0.77)
                        .fill(Color.blue)
                        .frame(width: thirdCircleSize, height: thirdCircleSize)
                    //.border(Color.red, width: 5)
                        .offset(x: thirdCircleXOffset, y: thirdCircleYOffset)
                        .rotationEffect(.degrees(180))
                    
                    Circle()
                        .trim(from: 0, to: 1)
                        .fill(backgroundColor.BrightBlue)
                        .frame(width: thirdCircleSize-10, height: thirdCircleSize-10)
                    //.border(Color.red, width: 5)
                        .offset(x: thirdCircleXOffset, y: thirdCircleYOffset)
                        .rotationEffect(.degrees(180))
                    
                    
                }
                .offset(x: thirdSquareXOffset, y: thirdSquareYOffset)
            } // Third square
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.BrightBlue.gradient)
                        .border(Color.blue, width: squareBorderSize)
                        .frame(width: fourthSquareSize, height: fourthSquareSize)
                    
                    //                    Text("Fourth Rectangle\nr: \(Int(fourthSquareSize))\nrFib: 5\nOffset: x: \(Int(fourthSquareXOffset)) y: \(Int(fourthSquareYOffset))")
                    //                        .font(.system(size: 9))
                    
                    Circle()
                        .trim(from: 0.4, to: 0.76)
                        .fill(Color.blue)
                        .frame(width: fourthCircleSize, height: fourthCircleSize)
                    //.border(Color.red, width: 5)
                        .offset(x: fourthCircleXOffset, y: fourthCircleYOffset)
                        .rotationEffect(.degrees(90))
                    
                    Circle()
                    //.trim(from: 0.5, to: 0.75)
                        .fill(backgroundColor.BrightBlue)
                        .frame(width: fourthCircleSize-10, height: fourthCircleSize-10)
                    //.border(Color.red, width: 5)
                        .offset(x: fourthCircleXOffset, y: fourthCircleYOffset)
                        .rotationEffect(.degrees(90))
                    
                }
                .offset(x: fourthSquareXOffset, y: fourthSquareYOffset)
            } // Fourth square
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.BrightBlue)
                        .border(Color.blue, width: squareBorderSize)
                        .frame(width: fifthSquareSize, height: fifthSquareSize)
                    
                    //                    Text("Fifth Rectangle\nr: \(Int(fifthSquareSize))\nrFib: 3\nOffset: x: \(Int(fifthSquareXOffset)) y: \(Int(fifthSquareYOffset))")
                    //                        .font(.system(size: 5))
                    
                    Circle()
                        .trim(from: 0.38, to: 0.76)
                        .fill(Color.blue)
                        .frame(width: fifthCircleSize, height: fifthCircleSize)
                    //.border(Color.red, width: 5)
                        .offset(x: fifthCircleXOffset, y: fifthCircleYOffset)
                        .rotationEffect(.degrees(0))
                    
                    Circle()
                        .trim(from: 0, to: 1)
                        .fill(backgroundColor.BrightBlue)
                        .frame(width: fifthCircleSize-10, height: fifthCircleSize-10)
                    //.border(Color.red, width: 5)
                        .offset(x: fifthCircleXOffset, y: fifthCircleYOffset)
                        .rotationEffect(.degrees(0))
                    
                }
                .offset(x: fifthSquareXOffset, y: fifthSquareYOffset)
            } // Fifth square
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.BrightBlue)
                        .border(Color.blue, width: squareBorderSize)
                        .frame(width: sixthSquareSize, height: sixthSquareSize)
                    
                    //                    Text("Sixth Rectangle\nr: \(Int(sixthSquareSize))\nrFib: 2\nOffset: x: \(Int(sixthSquareXOffset)) y: \(Int(sixthSquareYOffset))")
                    //                        .font(.system(size: 3.5))
                    
                    Circle()
                        .trim(from: 0.42, to: 0.8)
                        .fill(Color.blue)
                        .frame(width: sixthCircleSize, height: sixthCircleSize)
                    //.border(Color.red, width: 5)
                        .offset(x: sixthCircleXOffset, y: sixthCircleYOffset)
                        .rotationEffect(.degrees(270))
                    
                    Circle()
                        .trim(from: 0, to: 1)
                        .fill(backgroundColor.BrightBlue)
                        .frame(width: sixthCircleSize-10, height: sixthCircleSize-10)
                    //.border(Color.red, width: 5)
                        .offset(x: sixthCircleXOffset, y: sixthCircleYOffset)
                        .rotationEffect(.degrees(270))
                    
                    
                }
                .offset(x: sixthSquareXOffset, y: sixthSquareYOffset)
            } // Sixth square
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.BrightBlue)
                        .border(Color.blue, width: squareBorderSize)
                        .frame(width: lastASquareSize, height: lastASquareSize)
                    
                    //                    Text("r: \(Int(lastASquareSize))\nrFib: 2\nOffset: x: \(Int(lastASquareXOffset)) \ny: \(Int(lastASquareYOffset))")
                    //                        .font(.system(size: 2.5))
                    
                    Circle()
                        .trim(from: 0.5, to: 0.85)
                        .fill(Color.blue)
                        .frame(width: lastCircleSize, height: lastCircleSize)
                    //.border(Color.red, width: 5)
                        .offset(x: lastCircleXOffset, y: lastCircleYOffset)
                        .rotationEffect(.degrees(180))
                    
                    Circle()
                        .trim(from: 0, to: 1)
                        .fill(backgroundColor.BrightBlue)
                        .frame(width: lastCircleSize-10, height: lastCircleSize-10)
                    //.border(Color.red, width: 5)
                        .offset(x: lastCircleXOffset, y: lastCircleYOffset)
                        .rotationEffect(.degrees(180))
                    
                    
                }
                .offset(x: lastASquareXOffset, y: lastASquareYOffset)
            } // 1x1 A square
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.BrightBlue)
                        .border(Color.blue, width: squareBorderSize)
                        .frame(width: lastBSquareSize, height: lastBSquareSize)
                    
                    //                    Text("r: \(Int(lastBSquareSize))\nrFib: 1\nOffset: x: \(Int(lastBSquareXOffset)) \ny: \(Int(lastBSquareYOffset))")
                    //                        .font(.system(size: 2.5))
                    
                    Circle()
                        .trim(from: 0.5, to: 75)
                        .fill(Color.blue)
                        .frame(width: lastCircleSize, height: lastCircleSize)
                    //.border(Color.red, width: 5)
                        .offset(x: lastCircleXOffset, y: lastCircleYOffset)
                        .rotationEffect(.degrees(90))
                    
                    Circle()
                        .trim(from: 0, to: 1)
                        .fill(backgroundColor.BrightBlue)
                        .frame(width: lastCircleSize-10, height: lastCircleSize-10)
                    //.border(Color.red, width: 5)
                        .offset(x: lastCircleXOffset, y: lastCircleYOffset)
                        .rotationEffect(.degrees(90))
                    
                }
                .offset(x: lastBSquareXOffset, y: lastBSquareYOffset)
            } // 1x1 B square
            
            //Circle().fill(Color.green).frame(width: 120, height: 120)
            //.position(x:0, y: 0)
            
            //Text("13/21: \n \(0.619)")
            
            
        }
            .frame(width: widthLayout, height: heightLayoutNew)
            //.fixedSize(horizontal: true, vertical: true)
            //.position(x: 0, y: 0)
            //.ignoresSafeArea()
            //}
            .scaleEffect(1.9)
        //}
    }
}

struct MainLayoutFibanocci1: View {
    let backgroundColor = MainProperties.BGColors.init()
    
    
    // Frame size
    let widthLayout: CGFloat = 393
    let heightLayout: CGFloat = 700 // not to be used
    
    // Fibanocci size
    let widthFibanocci: CGFloat = 21
    let heightFibanocci: CGFloat = 34
    
    let squareBorderSize: CGFloat = 0
    
    var body: some View {
//        let sumFibanocciSize: CGFloat = widthFibanocci + heightFibanocci
        
        let heightLayoutNew: CGFloat = 34/21 * widthLayout
        let sumLayoutSize: CGFloat = widthLayout + heightLayoutNew
        
        // Squares
        let firstSquareSize: CGFloat = widthLayout
        let firstSquareXOffset: CGFloat = 0
        let firstSquareYOffset = -heightLayoutNew/2+widthLayout/2
        
        let secondSquareSize: CGFloat = 13/21*widthLayout
        let secondSquareXOffset: CGFloat = -75
        let secondSquareYOffset = heightLayoutNew/2 - (heightLayoutNew-widthLayout)/2
        
        let thirdSquareSize: CGFloat = 8/21*widthLayout+0.5
        let thirdSquareXOffset: CGFloat = 122-0.3
        let thirdSquareYOffset = heightLayoutNew/2 - (heightLayoutNew-widthLayout)/2 + 46.4
        
        let fourthSquareSize: CGFloat = 5/21*widthLayout - 0.2
        let fourthSquareXOffset: CGFloat = 122+27.7
        let fourthSquareYOffset = heightLayoutNew/2 - (heightLayoutNew-widthLayout)/2 - (heightLayoutNew-widthLayout)/2 + 46.5
        
        let fifthSquareSize: CGFloat = 3/21*widthLayout + 0.3
        let fifthSquareXOffset: CGFloat = 74.6 + 0.2
        let fifthSquareYOffset = heightLayoutNew/2 - (heightLayoutNew-widthLayout)/2 - (heightLayoutNew-widthLayout)/2 + 28.1
        
        let sixthSquareSize: CGFloat = 2/21*widthLayout-0.7
        let sixthSquareXOffset: CGFloat = 74.6 - 9.6
        let sixthSquareYOffset = heightLayoutNew/2 - (heightLayoutNew-widthLayout)/2 - 46.9
        
        let lastASquareSize: CGFloat = 1/21*widthLayout + 0.63
        let lastASquareXOffset: CGFloat = 93.33
        let lastASquareYOffset = heightLayoutNew/2 - (heightLayoutNew-widthLayout)/2 - 38.17
        
        let lastBSquareSize: CGFloat = 1/21*widthLayout + 0.63
        let lastBSquareXOffset: CGFloat = 93.33
        let lastBSquareYOffset = heightLayoutNew/2 - (heightLayoutNew-widthLayout)/2 - 55.8
        
        
        
        // Circles
        let firstCircleSize: CGFloat = widthLayout*2
        let firstCircleYOffset: CGFloat = firstCircleSize/4
        let firstCircleXOffset: CGFloat = firstCircleSize/4
        
        let secondCircleSize: CGFloat = secondSquareSize * 2
        let secondCircleYOffset: CGFloat = secondCircleSize/4
        let secondCircleXOffset: CGFloat = secondCircleSize/4
        
        let thirdCircleSize: CGFloat = thirdSquareSize * 2
        let thirdCircleYOffset: CGFloat = thirdCircleSize/4
        let thirdCircleXOffset: CGFloat = thirdCircleSize/4
        
        let fourthCircleSize: CGFloat = fourthSquareSize * 2
        let fourthCircleYOffset: CGFloat = fourthCircleSize/4
        let fourthCircleXOffset: CGFloat = fourthCircleSize/4
        
        let fifthCircleSize: CGFloat = fifthSquareSize * 2
        let fifthCircleYOffset: CGFloat = fifthCircleSize/4
        let fifthCircleXOffset: CGFloat = fifthCircleSize/4
        
        let sixthCircleSize: CGFloat = sixthSquareSize * 2
        let sixthCircleYOffset: CGFloat = sixthCircleSize/4
        let sixthCircleXOffset: CGFloat = sixthCircleSize/4
        
        let lastCircleSize: CGFloat = lastASquareSize * 2
        let lastCircleYOffset: CGFloat = lastCircleSize/4
        let lastCircleXOffset: CGFloat = lastCircleSize/4

        ZStack {
            MainLayout()
            ZStack {
                Color.red
                    .frame(width: widthLayout, height: heightLayoutNew)
                
                
                ZStack {
                    Group {
                        
                        Rectangle()
                            .fill(backgroundColor.StandardBlue.gradient)
                            .frame(width: firstSquareSize, height: firstSquareSize)
                            .border(Color.blue, width: squareBorderSize)
                        
                        Circle()
                            .trim(from: 0.5, to: 1)
                            .fill(Color.blue)
                            .frame(width: firstCircleSize, height: firstCircleSize)
                        //.border(Color.red, width: 5)
                            .offset(x: firstCircleXOffset, y: firstCircleYOffset)
                        
                        Circle()
                            .trim(from: 0.5, to: 1)
                            .fill(backgroundColor.BrightBlue)
                            .frame(width: firstCircleSize-10, height: firstCircleSize-10)
                        //.border(Color.red, width: 5)
                            .offset(x: firstCircleXOffset, y: firstCircleYOffset)
                        
                        //                    Text("First Rectangle\nr: \(Int(firstSquareSize))\nrFib: 21\nOffset: x: \(Int(firstSquareXOffset)) y: \(Int(firstSquareYOffset))")
                        //                        .font(.system(size: 20))
                        
                    }
                    .offset(x: firstSquareXOffset, y: firstSquareYOffset)
                    //.trim(from: 0.5, to: 1)
                }  // First square
                .frame(width: firstSquareSize, height: firstSquareSize)
                //.trim(from: 0.5, to: 1)
                
                ZStack {
                    Group {
                        Rectangle()
                            .fill(backgroundColor.BrightBlue.gradient)
                            .border(Color.blue, width: squareBorderSize)
                            .frame(width: secondSquareSize, height: secondSquareSize)
                        
                        Circle()
                            .trim(from: 0.5, to: 0.753)
                            .fill(Color.blue)
                            .frame(width: secondCircleSize, height: secondCircleSize)
                        //.border(Color.red, width: 5)
                            .offset(x: secondCircleXOffset, y: secondCircleYOffset)
                            .rotationEffect(.degrees(270))
                        
                        Circle()
                            .trim(from: 0.5, to: 0.75)
                            .fill(backgroundColor.BrightBlue)
                            .frame(width: secondCircleSize-10, height: secondCircleSize-10)
                        //.border(Color.red, width: 5)
                            .offset(x: secondCircleXOffset, y: secondCircleYOffset)
                            .rotationEffect(.degrees(270))
                        
                        //                    Text("Second Rectangle\nr: \(Int(secondSquareSize))\nrFib: 13\nOffset: x: \(Int(secondSquareXOffset)) y: \(Int(secondSquareYOffset))")
                        //                        .font(.system(size: 20))
                        
                    }
                    .offset(x: secondSquareXOffset, y: secondSquareYOffset)
                } // Second square
                .frame(width: secondSquareSize, height: secondSquareSize)
                
                ZStack {
                    Group {
                        Rectangle()
                            .fill(backgroundColor.BrightBlue.gradient)
                            .border(Color.blue, width: squareBorderSize)
                            .frame(width: thirdSquareSize, height: thirdSquareSize)
                        
                        //                    Text("Third Rectangle\nr: \(Int(thirdSquareSize))\nrFib: 8\nOffset: x: \(Int(thirdSquareXOffset)) y: \(Int(thirdSquareYOffset))")
                        //                        .font(.system(size: 15))
                        
                        Circle()
                            .trim(from: 0.5, to: 0.76)
                            .fill(Color.blue)
                            .frame(width: thirdCircleSize, height: thirdCircleSize)
                        //.border(Color.red, width: 5)
                            .offset(x: thirdCircleXOffset, y: thirdCircleYOffset)
                            .rotationEffect(.degrees(180))
                        
                        Circle()
                        //.trim(from: 0.5, to: 0.75)
                            .fill(backgroundColor.BrightBlue)
                            .frame(width: thirdCircleSize-10, height: thirdCircleSize-10)
                        //.border(Color.red, width: 5)
                            .offset(x: thirdCircleXOffset, y: thirdCircleYOffset)
                            .rotationEffect(.degrees(180))
                        
                        
                    }
                    .offset(x: thirdSquareXOffset, y: thirdSquareYOffset)
                } // Third square
                
                ZStack {
                    Group {
                        Rectangle()
                            .fill(backgroundColor.BrightBlue.gradient)
                            .border(Color.blue, width: squareBorderSize)
                            .frame(width: fourthSquareSize, height: fourthSquareSize)
                        
                        //                    Text("Fourth Rectangle\nr: \(Int(fourthSquareSize))\nrFib: 5\nOffset: x: \(Int(fourthSquareXOffset)) y: \(Int(fourthSquareYOffset))")
                        //                        .font(.system(size: 9))
                        
                        Circle()
                            .trim(from: 0.4, to: 0.76)
                            .fill(Color.blue)
                            .frame(width: fourthCircleSize, height: fourthCircleSize)
                        //.border(Color.red, width: 5)
                            .offset(x: fourthCircleXOffset, y: fourthCircleYOffset)
                            .rotationEffect(.degrees(90))
                        
                        Circle()
                        //.trim(from: 0.5, to: 0.75)
                            .fill(backgroundColor.BrightBlue)
                            .frame(width: fourthCircleSize-10, height: fourthCircleSize-10)
                        //.border(Color.red, width: 5)
                            .offset(x: fourthCircleXOffset, y: fourthCircleYOffset)
                            .rotationEffect(.degrees(90))
                        
                    }
                    .offset(x: fourthSquareXOffset, y: fourthSquareYOffset)
                } // Fourth square
                
                ZStack {
                    Group {
                        Rectangle()
                            .fill(backgroundColor.BrightBlue)
                            .border(Color.blue, width: squareBorderSize)
                            .frame(width: fifthSquareSize, height: fifthSquareSize)
                        
                        //                    Text("Fifth Rectangle\nr: \(Int(fifthSquareSize))\nrFib: 3\nOffset: x: \(Int(fifthSquareXOffset)) y: \(Int(fifthSquareYOffset))")
                        //                        .font(.system(size: 5))
                        
                        Circle()
                            .trim(from: 0.4, to: 0.76)
                            .fill(Color.blue)
                            .frame(width: fifthCircleSize, height: fifthCircleSize)
                        //.border(Color.red, width: 5)
                            .offset(x: fifthCircleXOffset, y: fifthCircleYOffset)
                            .rotationEffect(.degrees(0))
                        
                        Circle()
                        //.trim(from: 0.5, to: 0.75)
                            .fill(backgroundColor.BrightBlue)
                            .frame(width: fifthCircleSize-10, height: fifthCircleSize-10)
                        //.border(Color.red, width: 5)
                            .offset(x: fifthCircleXOffset, y: fifthCircleYOffset)
                            .rotationEffect(.degrees(0))
                        
                    }
                    .offset(x: fifthSquareXOffset, y: fifthSquareYOffset)
                } // Fifth square
                
                ZStack {
                    Group {
                        Rectangle()
                            .fill(backgroundColor.BrightBlue)
                            .border(Color.blue, width: squareBorderSize)
                            .frame(width: sixthSquareSize, height: sixthSquareSize)
                        
                        //                    Text("Sixth Rectangle\nr: \(Int(sixthSquareSize))\nrFib: 2\nOffset: x: \(Int(sixthSquareXOffset)) y: \(Int(sixthSquareYOffset))")
                        //                        .font(.system(size: 3.5))
                        
                        Circle()
                            .trim(from: 0.4, to: 0.76)
                            .fill(Color.blue)
                            .frame(width: sixthCircleSize, height: sixthCircleSize)
                        //.border(Color.red, width: 5)
                            .offset(x: sixthCircleXOffset, y: sixthCircleYOffset)
                            .rotationEffect(.degrees(270))
                        
                        Circle()
                        //.trim(from: 0.5, to: 0.75)
                            .fill(backgroundColor.BrightBlue)
                            .frame(width: sixthCircleSize-10, height: sixthCircleSize-10)
                        //.border(Color.red, width: 5)
                            .offset(x: sixthCircleXOffset, y: sixthCircleYOffset)
                            .rotationEffect(.degrees(270))
                        
                        
                    }
                    .offset(x: sixthSquareXOffset, y: sixthSquareYOffset)
                } // Sixth square
                
                ZStack {
                    Group {
                        Rectangle()
                            .fill(backgroundColor.BrightBlue)
                            .border(Color.blue, width: squareBorderSize)
                            .frame(width: lastASquareSize, height: lastASquareSize)
                        
                        //                    Text("r: \(Int(lastASquareSize))\nrFib: 2\nOffset: x: \(Int(lastASquareXOffset)) \ny: \(Int(lastASquareYOffset))")
                        //                        .font(.system(size: 2.5))
                        
                        Circle()
                            .trim(from: 0.45, to: 0.8)
                            .fill(Color.blue)
                            .frame(width: lastCircleSize, height: lastCircleSize)
                        //.border(Color.red, width: 5)
                            .offset(x: lastCircleXOffset, y: lastCircleYOffset)
                            .rotationEffect(.degrees(180))
                        
                        Circle()
                        //.trim(from: 0.5, to: 0.75)
                            .fill(backgroundColor.BrightBlue)
                            .frame(width: lastCircleSize-10, height: lastCircleSize-10)
                        //.border(Color.red, width: 5)
                            .offset(x: lastCircleXOffset, y: lastCircleYOffset)
                            .rotationEffect(.degrees(180))
                        
                        
                    }
                    .offset(x: lastASquareXOffset, y: lastASquareYOffset)
                } // 1x1 A square
                
                ZStack {
                    Group {
                        Rectangle()
                            .fill(backgroundColor.BrightBlue)
                            .border(Color.blue, width: squareBorderSize)
                            .frame(width: lastBSquareSize, height: lastBSquareSize)
                        
                        //                    Text("r: \(Int(lastBSquareSize))\nrFib: 1\nOffset: x: \(Int(lastBSquareXOffset)) \ny: \(Int(lastBSquareYOffset))")
                        //                        .font(.system(size: 2.5))
                        
                        Circle()
                            .trim(from: 0.5, to: 0.78)
                            .fill(Color.blue)
                            .frame(width: lastCircleSize, height: lastCircleSize)
                        //.border(Color.red, width: 5)
                            .offset(x: lastCircleXOffset, y: lastCircleYOffset)
                            .rotationEffect(.degrees(90))
                        
                        Circle()
                        //.trim(from: 0.5, to: 0.75)
                            .fill(backgroundColor.BrightBlue)
                            .frame(width: lastCircleSize-10, height: lastCircleSize-10)
                        //.border(Color.red, width: 5)
                            .offset(x: lastCircleXOffset, y: lastCircleYOffset)
                            .rotationEffect(.degrees(90))
                        
                    }
                    .offset(x: lastBSquareXOffset, y: lastBSquareYOffset)
                } // 1x1 B square
                
                //Circle().fill(Color.green).frame(width: 120, height: 120)
                //.position(x:0, y: 0)
                
                //Text("13/21: \n \(0.619)")
                
                
            }
            .frame(width: widthLayout, height: heightLayoutNew)
            //.fixedSize(horizontal: true, vertical: true)
            //.position(x: 0, y: 0)
            //.ignoresSafeArea()
            //}
        }
        
    }
}

struct MainLayoutBG1: View {
    let backgroundColor = MainProperties.BGColors.init()
    
    let sRad: Double = 700
    let radFactor = 1.01
    
//    init(eRad: Double?) {
//        self.eRad = sRad
//    }
    
    var body: some View {
        
        let eRad = sRad * radFactor
        
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [backgroundColor.primaryColor, backgroundColor.secondary2Color]),
                center: .center,
                startRadius: 100,
                endRadius: 500)
            .ignoresSafeArea()
            
            RadialGradient(
                gradient: Gradient(colors: [backgroundColor.primaryColor, backgroundColor.secondary3Color]),
                center: .bottomTrailing,
                startRadius: sRad,
                endRadius: eRad)
            .ignoresSafeArea()
            .opacity(0.3)
        }
    }
}

struct MainLayoutBG: View {
    let backgroundColor = MainProperties.BGColors.init()
    
    let sRad: Double = 700
    let radFactor = 1.01
    
//    init(eRad: Double?) {
//        self.eRad = sRad
//    }
    
    var body: some View {
        
        let eRad = sRad * radFactor
        
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [backgroundColor.primaryColor, backgroundColor.secondary2Color]),
                center: .center,
                startRadius: 100,
                endRadius: 500)
            .ignoresSafeArea()
            
            RadialGradient(
                gradient: Gradient(colors: [backgroundColor.primaryColor, backgroundColor.secondary3Color]),
                center: .bottomTrailing,
                startRadius: sRad,
                endRadius: eRad)
            .ignoresSafeArea()
            .opacity(0.3)
            //MainMathGame()
            //MainContent()
        }
    }
}

struct MainLayout2: View {
    let backgroundColor = MainProperties.BGColors.init()
    
    let sRad: Double = 700
    let radFactor = 1.01
    
//    init(eRad: Double?) {
//        self.eRad = sRad
//    }
    
    var body: some View {
        
        let eRad = sRad * radFactor
        
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [backgroundColor.primaryColor, backgroundColor.secondary2Color]),
                center: .center,
                startRadius: 100,
                endRadius: 500)
            .ignoresSafeArea()
            
            RadialGradient(
                gradient: Gradient(colors: [backgroundColor.primaryColor, backgroundColor.secondary3Color]),
                center: .bottomTrailing,
                startRadius: sRad,
                endRadius: eRad)
            .ignoresSafeArea()
            .opacity(0.3)
            //MainMathGame()
            //MainContent()
        }
    }
}

struct MainLayout1: View {
    let backgroundColor = MainProperties.BGColors.init()
    var body: some View {
        //ZStack {
            RadialGradient(
                gradient: Gradient(colors: [backgroundColor.primaryColor, backgroundColor.secondary2Color]),
                center: .center,
                startRadius: 100,
                endRadius: 500)
            .ignoresSafeArea()
            //MainMathGame()
            //MainContent()
        //}
    }
}


// see ColorPatterm
struct MainColorsOverview: View {
    var body: some View {
        let backgroundColor = MainProperties.BGColors.init()
        VStack {
            
            Group {
                //Color.red
                ZStack {
                    backgroundColor.primaryColor
                    Text("Primary Color")
                }
            }
            Group {
                //Color.red
                ZStack {
                    //RoundedRectangle(cornerRadius: 25)
                    backgroundColor.secondaryColor
                    Text("Secondary Color")
                }
            }
            Group {
                //Color.red
                ZStack {
                    backgroundColor.secondaryColor
                        .brightness(0.15)
                    Text("Secondary Bright Color")
                }
            }
            Group {
                //Color.red
                ZStack {
                    
                    Color(red: 0.65, green: 0.8, blue: 1)
                    VStack {
                        Text("Secondary 2 Color")
                        Text("Color(red: 0.65, green: 0.8, blue: 1)")}
                }
            }
            Group {
                //Color.red
                ZStack {
                    Color(red: 0.45, green: 0.7, blue: 1)
                    VStack {
                        Text("Secondary 3 Color")
                        Text("Text(Color(red: 0.45, green: 0.7, blue: 1))}")}
                }
            }
            Group {
                //Color.red
                ZStack {
                    //Color(red: 0.31, green: 0.416, blue: 0.561)
                    backgroundColor.thirdColor
                    VStack {
                        Text("Third Color")
                        .foregroundColor(Color.white)
                        Text("Color(red: 0.31, green: 0.416, blue: 0.561)")
                            .foregroundColor(Color.white)
                    }
                }
            }
            
            
            
            //Color(red: 0.65, green: 0.65, blue: 1)
            //backgroundColor.secondaryColor
                //.brightness(0.15)
             //   .contrast(1.1)
            //backgroundColor.thirdColor
            
            //CGColor(red: 78, green: 107, blue: 143, alpha: 1)
            //Color.indigo
        }
        
      //  CGFloat red = self.btn.backgroundColor.CIColor.red;
    }
}


struct MainLayout_Previews: PreviewProvider {
    static var previews: some View {
        //MainColorsOverview()
        MainLayoutSquares()
        
    }
}
