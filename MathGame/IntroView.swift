//
//  IntroView.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 24.09.23.
//

import SwiftUI

struct IntroView: View {
    let backgroundColor = MainProperties.BGColors.init()
    
    @State private var randomNumbers: [Int] = [0, 1,2,3,4,5,6,7,8,9]
    //@State private var randomNumbers: [Int] = []
    
    var emptyFloats: Array<Float> = Array()
    
    let testString: [String] = ["Str1", "Str2"]
    
    var body: some View {
        
        //var emptyDoubles: [Int] = [randomNumbers()]
        
        ZStack {
            
            Color(red: 0.12, green: 0.22, blue: 0.3)
                .ignoresSafeArea()
            VStack {
                HStack {
                    
                    ForEach(0..<10) { index in
                        
                        //Text("\(randomNumbers[index])")
                        Text("\(randomNumbers[index])")
                        //.frame(width: 200, height: 200)
                            .font(.custom("American Typewriter", size: 30))
                            .foregroundColor(Color.green)
                    }
                }
            }
            .onAppear(perform: {
                generateRandNum()})
        }
        
    }
    func generateRandNum() {
        randomNumbers = [Int.random(in: 0...9)]
        var answerList = [Int]()
        
        for _ in 0...10 {
            answerList.append(Int.random(in: 0...9))
        }
        
       
        
        randomNumbers = answerList
        
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
