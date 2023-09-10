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

struct MainLayout_Old: View {
    var body: some View {
        Color.gray
            //.ignoresSafeArea()
            .overlay(
                ZStack {
                        MainContent()
                        .padding()
                        Text("Test")
                            .foregroundColor(Color.white)
                            .font(.system(size: 100))
                }
            )
    }
}

struct MainContent: View {
    var body: some View {
        
        ZStack {
            HStack {
                VStack {
                    Text("VStack")
                    Text("VStack 2")
                    Text("VStack 3")
                }
                Text("HStack")
                Text("HStack 2")
                    .font(Font.largeTitle)
            }
            Text("ZStack")
                .foregroundColor(Color.red)
                .font(.system(size: 33))
                .frame(width: 2300, height: 2600)
            Text("ZStack 2)")
                .foregroundColor(Color.yellow)
        }
    }
}

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
