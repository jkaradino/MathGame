//
//  ColorPattern.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 13.09.23.
//

import SwiftUI

struct ColorPattern: View {
    var body: some View {
        let backgroundColor = MainProperties.BGColors.init()
        VStack {
            Group {
                //Color.red
                ZStack {
                    //RoundedRectangle(cornerRadius: 25)
                    backgroundColor.secondaryColor
                    Color.cyan
                    Text("Secondary Color")
                }
            } // secondary
            
            Group {
                ZStack {
                    backgroundColor.secondaryColor
                        .brightness(0.15)
                    Text("Secondary Bright Color")
                }
            } // secondary bright
            
            Group {
                ZStack {
                    backgroundColor.White
                    Text("White")
                } // white
                .frame(width: 200, height: 70)
            } // white
            
            Group {
                ZStack {
                    //Color(red: 0.8, green: 0.85, blue: 0.92)
                    //Color("GrayBlue")
                    backgroundColor.GrayBlue
                    Text("GrayBlue").bold()
                }
            } // gray blue
            
            Group {
                ZStack {
                    //Color(red: 0.65, green: 0.8, blue: 1)
                    //Color("BrightBlue")
                    backgroundColor.BrightBlue
                    VStack {
                        Text("BrightBlue").bold()
                        Text("Color(red: 0.65, green: 0.8, blue: 1)")}
                }
            } // standard blue
            
            Group {
                ZStack {
                    //Color(red: 0.45, green: 0.7, blue: 1)
                    //Color("StandardBlue")
                    backgroundColor.StandardBlue
                    VStack {
                        Text("StandardBlue").bold()
                        Text("Text(Color(red: 0.45, green: 0.7, blue: 1))}")}
                }
            } // standard blue
            
            Group {
                ZStack {
                    Color("MetallicDarkBlue")
                    //Color(red: 0.31, green: 0.416, blue: 0.561)
                    backgroundColor.MetallicDarkBlue
                    
                    VStack {
                        Text("MetallicDarkBlue").bold()
                        .foregroundColor(Color.white)
                        Text("Color(red: 0.31, green: 0.416, blue: 0.561)")
                            .foregroundColor(Color.white)
                    } // Text
                }
            } // metallic dark blue
            
            Group {
                ZStack {
                    //Color(red: 0.15, green: 0.3, blue: 0.5)
                    //Color("DarkBlue")
                    backgroundColor.DarkBlue
                    VStack {
                        Text("DarkBlue").bold()
                        Text("Color(red: 0.65, green: 0.8, blue: 1)")}
                    .foregroundColor(.white)
                }
            } // dark blue
            
            //Color.indigo
        }
        
      //  CGFloat red = self.btn.backgroundColor.CIColor.red;
    }
}

struct ColorPattern_Previews: PreviewProvider {
    static var previews: some View {
        ColorPattern()
    }
}
