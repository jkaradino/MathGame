//
//  MainLayout.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 16.08.23.
//

import SwiftUI


struct MainLayout: View {
    var body: some View {
        ZStack {
            MainLayoutBG()
            Image(systemName: "angle")
                .position(x: 100, y: 50)
                .frame(width: 200, height: 200)
                .font(.system(size: 120))
                .foregroundColor(Color(red: 0.65, green: 0.8, blue: 1))
                .shadow(radius: 5)
                .rotationEffect(Angle(degrees: -20))
                
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
        MainLayout()
    }
}
