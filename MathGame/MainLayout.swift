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
    
    let sRad: Double = 700
    let radFactor = 1.01
    
//    init(eRad: Double?) {
//        self.eRad = sRad
//    }
    
    // Frame size
    let widthLayout: CGFloat = 393
    let heightLayout: CGFloat = 700
    
    // Fibanocci size
    let widthFibanocci: CGFloat = 21
    let heightFibanocci: CGFloat = 34
    
    var body: some View {

        
//        let sumFibanocciSize: CGFloat = widthFibanocci + heightFibanocci
        
        let firstSquareSize: CGFloat = widthLayout
        let heightLayoutNew: CGFloat = 34/21 * widthLayout
        
        let sumLayoutSize: CGFloat = widthLayout + heightLayoutNew
        
        let firstYOffset = -heightLayoutNew/2+widthLayout/2
        
        //let secondSquareSize: CGFloat = heightLayoutNew - widthLayout
        let secondSquareSize: CGFloat = 13/21*widthLayout
        // 13/21*400
        let secondYOffset = heightLayoutNew/2 - (heightLayoutNew-widthLayout)/2
        
        //let thirdSquareSize: CGFloat = heightLayoutNew - widthLayout - 100
        let thirdSquareSize: CGFloat = 8/21*widthLayout+1
        let thirdYOffset = heightLayoutNew/2 - (heightLayoutNew-widthLayout)/2
        
        let fourthSquareSize: CGFloat = 5/21*widthLayout+1
        let fourthYOffset = thirdYOffset - (heightLayoutNew-widthLayout)/2
        
        let fifthSquareSize: CGFloat = 3/21*widthLayout+1
        let fifthYOffset = thirdYOffset - (heightLayoutNew-widthLayout)/2 + 64

        ZStack {
            Color.red
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.StandardBlue)
                        .border(Color.blue, width: 5)
                        .frame(width: firstSquareSize, height: firstSquareSize)
                    Text("First Rectangle\n400x400\n21x21\nOffset: y: \(Int(firstYOffset))")
                        .font(.system(size: 40))
                }
                //.position(x:0, y: 0)
                //.offset(y: -350+200)
                    .offset(y: firstYOffset)
                //.position(x: 0, y: 0)
            }
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.BrightBlue)
                        .border(Color.blue, width: 5)
                        .frame(width: secondSquareSize, height: secondSquareSize)
                    //.position(x:0, y: 0)
                    //.offset(y: -350+200)
                    //.offset(y: -heightLayout/2+widthLayout/2)
                    //.offset(y: 200)
                    //.position(x: 0, y: 0)
                    Text("Second Rectangle\n300x300\n13x13\nOffset: y: \(Int(secondYOffset))")
                        .font(.system(size: 30))
                }
                .offset(x: -75, y: secondYOffset)
            }
            
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.MetallicDarkBlue)
                        .border(Color.blue, width: 5)
                        .frame(width: thirdSquareSize, height: thirdSquareSize)
                    //.position(x:0, y: 0)
                    //.offset(y: -350+200)
                    //.offset(y: -heightLayout/2+widthLayout/2)
                    //.offset(y: 200)
                    //.position(x: 0, y: 0)
                    Text("Third Rectangle\n300x300\n13x13\nOffset: y: \(Int(thirdYOffset))")
                        .font(.system(size: 15))
                }
                .offset(x: 122, y: thirdYOffset+46)
            }
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.GrayBlue)
                        .border(Color.blue, width: 5)
                        .frame(width: fourthSquareSize, height: fourthSquareSize)
                    //.position(x:0, y: 0)
                    //.offset(y: -350+200)
                    //.offset(y: -heightLayout/2+widthLayout/2)
                    //.offset(y: 200)
                    //.position(x: 0, y: 0)
                    Text("Third Rectangle\n300x300\n13x13\nOffset: y: \(Int(thirdYOffset))")
                        .font(.system(size: 10))
                }
                .offset(x: 122+27, y: fourthYOffset+46)
            }
            
            ZStack {
                Group {
                    Rectangle()
                        .fill(backgroundColor.DarkBlue)
                        .border(Color.blue, width: 5)
                        .frame(width: fifthSquareSize, height: fifthSquareSize)
                    //.position(x:0, y: 0)
                    //.offset(y: -350+200)
                    //.offset(y: -heightLayout/2+widthLayout/2)
                    //.offset(y: 200)
                    //.position(x: 0, y: 0)
                    Text("Fifth Rectangle\n300x300\n13x13\nOffset: y: \(Int(fifthYOffset))")
                        .font(.system(size: 6))
                }
                .offset(x: 75, y: fifthYOffset)
            }
            
            
            
            Circle().fill(Color.blue).frame(width: 220, height: 220)
                .position(x:200 , y: 0)
            
            
            Circle().fill(Color.green).frame(width: 120, height: 120)
                //.position(x:0, y: 0)
            

            
            Text("13/21: \n \(0.619)")
            
            
        }
        .frame(width: widthLayout, height: heightLayoutNew)
        .fixedSize(horizontal: true, vertical: false)
        //.position(x: 0, y: 0)
        
        
        
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
