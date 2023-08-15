//
//  Background_Template.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 14.08.23.
//

import SwiftUI

struct Background_Template: View {
    var body: some View {
        
        ///Color.teal
        ///
        var WhichColorsToDisplay: Int = 1
        
        ColorCollection()
        
        
        VStack {
            Color.purple.brightness(0.5)
                            .padding(0)
            Color.purple
                            .padding(0)
        }
            
            
    }
//        Color.purple
//            .brightness(0.5)
       // Text("Template")
    
}

struct ColorCollection: View {
    var body: some View {
        HStack {
            VStack {
                Color.purple.brightness(0.3)
                Color.purple
                    }
            VStack {
                Color.mint.brightness(0.07)
                Color.teal
                    .contrast(1)
                    .brightness(0)
                    }
            VStack {
                Color.cyan
                Color.indigo
            }
            
        }
        
        
    }
}



struct Background_Template_Previews: PreviewProvider {
    static var previews: some View {
        Background_Template()
    }
}
