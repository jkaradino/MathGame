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
        MainLayoutFibanocci()
    }
}
