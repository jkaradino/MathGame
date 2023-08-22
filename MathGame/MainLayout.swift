//
//  MainLayout.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 16.08.23.
//

import SwiftUI

struct MainLayout: View {
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
            backgroundColor.primaryColor
            backgroundColor.secondaryColor
                .brightness(0.15)
             //   .contrast(1.1)
            //backgroundColor.thirdColor
            Color(red: 0.31, green: 0.416, blue: 0.561)
            //Color.indigo
        }
        
      //  CGFloat red = self.btn.backgroundColor.CIColor.red;
    }
}

struct MainLayout_Previews: PreviewProvider {
    static var previews: some View {
        MainColorsOverview()
    }
}
