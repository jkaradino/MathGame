//
//  TestView.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 06.10.23.
//

import SwiftUI

struct TestView: View {
    let backgroundColor = MainProperties.BGColors.init()
    
    @State private var numberKeypad: Int = 0
    var body: some View {
        let widthSquare: CGFloat = 380/4
        let heightSquare: CGFloat = 380/4
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(backgroundColor.DarkBlue)
                .frame(width: widthSquare, height: heightSquare)
            Text("\(numberKeypad)")
                .font(.custom("American Typewriter", size: 50))
                .foregroundColor(backgroundColor.GrayBlue)
        }
    }
}

struct KeyPad: View {
    @Binding var string: String

    var body: some View {
        VStack {
            KeyPadRow(keys: ["1", "2", "3"])
            KeyPadRow(keys: ["4", "5", "6"])
            KeyPadRow(keys: ["7", "8", "9"])
            KeyPadRow(keys: [".", "0", "⌫"])
        }.environment(\.keyPadButtonAction, self.keyWasPressed(_:))
    }

    private func keyWasPressed(_ key: String) {
        switch key {
        case "." where string.contains("."): break
        case "." where string == "0": string += key
        case "⌫":
            string.removeLast()
            if string.isEmpty { string = "0" }
        case _ where string == "0": string = key
        default: string += key
        }
    }
}

struct KeyPadButton: View {
    var key: String

    var body: some View {
        Button(action: { self.action(self.key) }) {
            Color.clear
                .overlay(RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.accentColor))
                .overlay(Text(key))
        }
    }

    enum ActionKey: EnvironmentKey {
        static var defaultValue: (String) -> Void { { _ in } }
    }

    @Environment(\.keyPadButtonAction) var action: (String) -> Void
}

extension EnvironmentValues {
    var keyPadButtonAction: (String) -> Void {
        get { self[KeyPadButton.ActionKey.self] }
        set { self[KeyPadButton.ActionKey.self] = newValue }
    }
}

#if DEBUG
struct KeyPadButton_Previews: PreviewProvider {
    static var previews: some View {
        KeyPadButton(key: "8")
            .padding()
            .frame(width: 80, height: 80)
            .previewLayout(.sizeThatFits)
        
        
    }
}
#endif

struct ContentView1: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(string)
            }.padding([.leading, .trailing])
            Divider()
            KeyPad(string: $string)
        }
        .font(.largeTitle)
            .padding()
    }

    @State private var string = "0"

}

struct KeyPadRow: View {
    var keys: [String]

    var body: some View {
        HStack {
            ForEach(keys, id: \.self) { key in
                KeyPadButton(key: key)
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
        //TestView()
        
        //KeyPadButton(key: "0")
    }
}
