//
//  GameSettings.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 03.09.23.
//

import SwiftUI

struct SettingItems {
    @State private var username: String = ""

}

struct GameSettings: View {
    @State private var username: String = ""
    
    var body: some View {
        VStack {
            GroupBox {
                GroupBox {
                    HStack {
                        Text("Username")
                        TextField("text", text: $username)
                    }
                }
                GroupBox {
                    HStack {
                        Text("Difficulty")
                        
                    }
                }
            }
        }
        
    }
}

struct GameSettings_Previews: PreviewProvider {
    static var previews: some View {
        GameSettings()
    }
}
