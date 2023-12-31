//
//  TestForAlen.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 15.08.23.
//

import SwiftUI

struct TestForAlen: View {
    var body: some View {
        let kevinbloed: String = "Kevin ist blöd"
        lazy var butText = MainProperties.BGColors.init()
        
        VStack {
            Text(kevinbloed)
                .foregroundColor(butText.secondaryColor)
                .padding(1)
            Text("Pascal ist dümmer")
                .offset(x: 100, y: 100)
        }
        
        
        
    }
}

struct TestForAlen_Previews: PreviewProvider {
    static var previews: some View {
        TestForAlen()
    }
}
