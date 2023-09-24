//
//  SingleGameContent.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 22.07.23.
//

// List here all Single Game Contents

import SwiftUI

struct xSingleGameContent: View {
    var body: some View {
        Button {
            // action
        } label: {
            MenuButton(buttonText: "test", buttonDescription: "textbla", buttinWidth: 350, buttonHeight: 300)
        }
        
        
    }
}


struct xSingleGameContent_Previews: PreviewProvider {
    static var previews: some View {
        xSingleGameContent()
    }
}
