//
//  DataStorage.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 03.10.23.
//

import SwiftUI

struct DataStorage: View {
    @State private var text = ""
    @AppStorage("STRING_KEY") var savedText = ""
    @AppStorage("NUMBER_KEY") var counter = 0
    
    
    var body: some View {
        VStack {
            Text("\(counter)")
                .font(.system(size: 100, weight: .bold, design: .serif))
                .foregroundColor(.blue)
                .onTapGesture {
                    counter += 1
                }
            
            TextField("Type something", text: $text)
                .textFieldStyle(.roundedBorder)
                .font(.title)
                .autocorrectionDisabled(true)
                //.onChange(of: text, perform: {self.savedText = text})
            
                .onChange(of: text) { _ in
                            self.savedText = text
                        }
                
                .onAppear {
                    //self.savedText = text
                    self.text = savedText
                    print("Loaded: \(savedText)")
                }
            Spacer()
                
        }
        .padding()
        
        
        
    }
}

struct ShowHighlights: View {
    
    var tableRow = HStack {
        Text("1. ")
            
        Text("placeholder")
        
    }
        
    
    var table: [String] = [
        "1. _ "
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Text("Highlights")
                    .font(.custom("American Typewriter", size: 30))
                    .padding()
                Spacer()
            }
            .padding()
            Spacer()
            
            GroupBox {
                Text("Ranking")
                    
                List {
                    tableRow
                        //.padding(.horizontal)
                }
                
            }
            .frame(width: 400, height: 700)
        }
    }
    
}

struct DataStorage_Previews: PreviewProvider {
    static var previews: some View {
        //ShowHighlights()
        DataStorage()
    }
}
