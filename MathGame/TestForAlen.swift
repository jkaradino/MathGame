//
//  TestForAlen.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 15.08.23.
//

import SwiftUI

struct TestForAlen: View {
    var body: some View {
        var Alenkovic: String = "Test"
        lazy var butText = MainProperties.BGColors.init()
        
        Text(Alenkovic)
            .foregroundColor(butText.secondaryColor)
        
    }
}

struct TestForAlen_Previews: PreviewProvider {
    static var previews: some View {
        TestForAlen()
    }
}
