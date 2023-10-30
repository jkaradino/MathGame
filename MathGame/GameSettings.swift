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
    // only once
    @State private var username: String = ""
    @State private var placeholder: String = "Select your difficulty"
    @State private var selectionSaved: Bool = true
    // ??
    @State private var clickedToSave: Bool = false
    @State private var clickedToSaveTest: Bool = false
    
    @State private var testOptionSaved: Bool = false
    //@State private var testOptionCurrent: Bool = false
    
    // for each new
    @State private var difficulty: DropDownMenuOption? = nil
    @State private var timeLimit: DropDownMenuOption? = nil
    @State private var testOptions: DropDownMenuOption? = nil
    
    
    
    /// Confirmed to save
    @State private var confirmedName: Bool = false
    @State private var confirmedDifficulty: Bool = false
    
    
    /// DATA STORAGE
    @State private var text = "" // unused
    @AppStorage("NUMBER_KEY") var counter = 0 // unused
    @AppStorage("STRING_KEY") var savedUsername = ""
    @AppStorage("STRING_KEY") var savedDifficulty = ""
    
    
    var body: some View {
        var initDifficulty = difficulty
        
        
        var testNewSelected: Bool? = false
        
        var testOptionCurrent = testOptions?.option
        
        //var testOptionSaved = clickedToSaveTest ? testOptionCurrent : testOptionCurrent
        
        var selectedDifficulty = selectionSaved ? placeholder : "df"
        
        //var changedSelection = selectedDifficulty == initDifficulty ? true : false
        
        //var savedSelection =
        let backgroundColor = MainProperties.BGColors.init()
        
        
        
        ZStack {
            backgroundColor.DarkBlue.opacity(1)
            VStack(alignment: .leading) {
                Text("Game Settings")
                    .font(.custom("American Typewriter", size: 30))
                    .padding()
                Spacer()
                
                ScrollView {
                    
                    /// Username
                    GroupBox {
                        HStack {
                            Text("Username")
                            
                            if confirmedName {
                                Text("\(username)")
                                    .bold()
                            } else {
                                TextField("type your name", text: $username)
                                    .onChange(of: username) { _ in
                                        savedUsername = username
                                    }
                                    .onAppear {
                                        self.username = savedUsername
                                    }
                            }
                            Spacer()
                            Button(action: {
                                confirmedName.toggle()
                            }, label: {
                                if confirmedName {
                                    Text("Change")
                                } else {
                                    Text("Save")
                                }
                            })
                        }
                    }
                    .scaledToFit()
                    
                    /// Difficulty drop down menu
                    GroupBox {
                        VStack(alignment: .leading) {
                            
                            Text("Difficulty")
                                .bold()
                                .padding(.horizontal)
                            
                            // For each new "difficulty" / "allDifficultyValues" to be changed
                            
                            DropDownMenu(
                                selectedOption: clickedToSave ? self.$difficulty :  self.$difficulty,
                                placeholder: "Choose your status",
                                options: DropDownMenuOption.allDifficultyValues,
                                clickedToSave: clickedToSave)
                            
                            HStack {
                                if clickedToSave {
                                    Button(action: {
                                        clickedToSave.toggle()
                                    }, label: {
                                        Text("Save")
                                            .onChange(of: difficulty?.option) { _ in
                                                self.clickedToSave = false
                                            }
                                    })
                                    .hidden()
                                    .padding(.horizontal)
                                }
                                
                                if !clickedToSave {
                                    Button(action: {
                                        
                                        
                                        clickedToSave.toggle()
                                    }, label: {
                                        Text("Save")
                                        
                                            .onChange(of: difficulty?.option) { _ in
                                                self.clickedToSave = false
                                            }
                                    })
                                    
                                    .padding(.horizontal)
                                }
                                
                                
                                Spacer()
                                Text(difficulty?.option ?? "")
                                    .foregroundColor(.gray)
                                    .padding(.horizontal)
                                    .italic()
                                    .opacity(clickedToSave == true ? 1 : 0)
                            }
                            
                            //Spacer()
                            //.padding(.vertical)
                        }
                        
                    }
                    
                    
                    /// Time Limit drop down menu
                    GroupBox {
                        VStack(alignment: .leading) {
                            
                            Text("Time Limitation")
                                .bold()
                                .padding(.horizontal)
                            
                            // For each new "difficulty" / "allDifficultyValues" to be changed
                            
                            DropDownMenu(
                                selectedOption: clickedToSave ? self.$timeLimit :  self.$timeLimit,
                                placeholder: "Choose your status",
                                options: DropDownMenuOption.allTimeValues,
                                clickedToSave: clickedToSave)
                            
                            HStack {
                                if clickedToSave {
                                    Button(action: {
                                        clickedToSave.toggle()
                                    }, label: {
                                        Text("Save")
                                            .onChange(of: timeLimit?.option) { _ in
                                                self.clickedToSave = false
                                            }
                                    })
                                    .hidden()
                                    .padding(.horizontal)
                                }
                                
                                if !clickedToSave {
                                    Button(action: {
                                        clickedToSave.toggle()
                                    }, label: {
                                        Text("Save")
                                        
                                            .onChange(of: timeLimit?.option) { _ in
                                                self.clickedToSave = false
                                            }
                                    })
                                    
                                    .padding(.horizontal)
                                }
                                
                                
                                Spacer()
                                Text(timeLimit?.option ?? "")
                                    .foregroundColor(.gray)
                                    .padding(.horizontal)
                                    .italic()
                                    .opacity(clickedToSave == true ? 1 : 0)
                            }
                            
                            //Spacer()
                            //.padding(.vertical)
                        }
                        
                    }
                    
                    /// TEST drop down menu
                    GroupBox {
                        VStack(alignment: .leading) {
                            
                            Text("Test: Status")
                                .bold()
                                .padding(.horizontal)
                            
                            
                            // selectedOption == nil ? "Select your difficulty" : "test"
                            
                            DropDownMenu(
                                selectedOption: clickedToSaveTest ? self.$testOptions :  self.$testOptions,
                                placeholder: "Choose your status",
                                options: DropDownMenuOption.allTestValues,
                                clickedToSave: clickedToSaveTest)
                            
                            
                            HStack {
                                
                                //if
                                
                                if clickedToSaveTest {
                                    Button(action: {
                                        //clickedToSaveTest.toggle()
                                    }, label: {
                                        Text("Save")
                                        
                                            .onChange(of: testOptions?.option) { _ in
                                                self.clickedToSaveTest = false
                                            }
                                    })
                                    .hidden()
                                    .padding(.horizontal)
                                }
                                
                                if !clickedToSaveTest {
                                    Button(action: {
                                        //clickedToSaveTest.toggle()
                                    }, label: {
                                        Text("Save")
                                        
                                            .onChange(of: testOptions?.option) { _ in
                                                self.clickedToSaveTest = false
                                            }
                                    })
                                    
                                    .padding(.horizontal)
                                }
                                
                                
                                Spacer()
                                Text(testOptions?.option ?? "")
                                    .foregroundColor(.gray)
                                    .padding(.horizontal)
                                    .italic()
                                    .opacity(clickedToSaveTest == true ? 1 : 0)
                            }
                            
                            //Spacer()
                            //.padding(.vertical)
                        }
                        
                    }
                    
                }
            }
            
        }
    }
}

struct DropDownMenu: View {
    /// Used to show or hide drop-down menu options
    @State private var isOptionsPresented: Bool = false
    
    

    /// Used to bind user selection
    @Binding var selectedOption: DropDownMenuOption?
    
    /// Placerholder for dropdown menu
    let placeholder: String
    
    /// Dropdown menu options
    let options: [DropDownMenuOption]
    
    /// Confirm to save the value and gray it out
    var clickedToSave: Bool

    var body: some View {
        
        if clickedToSave {
            @State var savePlaceholder = ""
        }
        
        Button(action: {
            withAnimation {
                self.isOptionsPresented.toggle()
            }
        }) {
            HStack {
                
                if clickedToSave {
                    Text(selectedOption == nil ? placeholder : selectedOption!.option)
                        .fontWeight(.medium)
                        .foregroundColor(clickedToSave == true ? .gray : .black)
                } else {
                    
                    Text(selectedOption == nil ? placeholder : selectedOption!.option)
                        .fontWeight(.medium)
                        .foregroundColor(selectedOption == nil ? .gray : .black)
                }
                    
                
                Spacer()
                
                Image(systemName: self.isOptionsPresented ? "chevron.up" : "chevron.down") // This modifier is available for Image since iOS 16.0
                    .fontWeight(.medium)
                    .foregroundColor(.black)
            }
        } /// End of button label
        .padding()
        .overlay {
            RoundedRectangle(cornerRadius: 5)
                .stroke(.gray, lineWidth: 2)
        }
        .overlay(alignment: .top) {
            VStack {
                if self.isOptionsPresented {
                    Spacer(minLength: 60)
                    DropDownMenuList(options: self.options) { option in
                        self.isOptionsPresented = false
                        self.selectedOption = option
                    }
                }
                
                
            }
        }
        //.padding(.horizontal)
        .padding(.horizontal)
        /// Push views under drop down menu, when option list open
        .padding(
            .bottom, self.isOptionsPresented
            ? CGFloat(self.options.count * 32) > 300 ? 300+30 : CGFloat(self.options.count * 32)+30 : 0
        )
        

    }
}

struct DropDownMenuList: View {
    /// Dropdown menu list option
    let options: [DropDownMenuOption]
    
    /// An action called when user selects an action
    let onSelectedAction: (_ option: DropDownMenuOption) -> Void
    
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 2) {
                
                ForEach(options) { option in
                    DropDownMenuListRow(option: option, onSelectedAction: self.onSelectedAction)
                }
                
            }
        }
        .frame(height: CGFloat(self.options.count * 32 > 300 ? 300 : CGFloat(self.options.count * 32)))
        .padding(.vertical, 5)
        .overlay {
            RoundedRectangle(cornerRadius: 5)
                .stroke(.gray, lineWidth: 2)
        }
        
    }
}

struct DropDownMenuListRow: View {
    let option: DropDownMenuOption
    

    /// An action called when user selects an action
    let onSelectedAction: (_ option: DropDownMenuOption) -> Void
    
    
    var body: some View {
        Button(action: {
            self.onSelectedAction(option)
        }, label: {
            Text(option.option)
                .frame(maxWidth: .infinity, alignment: .leading)
        })
        .foregroundColor(.black)
        .padding(.vertical, 5)
        .padding(.horizontal)
        
    }
}

/// Will be used with FaorEach --> confirm to Hashable protocol
struct DropDownMenuOption: Identifiable, Hashable {
    let id = UUID().uuidString
    let option: String
}

extension DropDownMenuOption {
    
    //var gameLevelAwards = ["Beginner", "Advanced", "Smart Guy", "Professional", "Game Changer"]
    
    static let singleValue: DropDownMenuOption = DropDownMenuOption(option: "Noob")
    static let allValues: [DropDownMenuOption] = [
        DropDownMenuOption(option: "Noob"),
        DropDownMenuOption(option: "Beginner"),
        DropDownMenuOption(option: "Smart Guy"),
        DropDownMenuOption(option: "Professional"),
        DropDownMenuOption(option: "Expert")]
    
    static let allDifficultyValues: [DropDownMenuOption] = [
        DropDownMenuOption(option: "Noob"),
        DropDownMenuOption(option: "Beginner"),
        DropDownMenuOption(option: "Smart Guy"),
        DropDownMenuOption(option: "Professional"),
        DropDownMenuOption(option: "Expert")]
    
    static let allTimeValues: [DropDownMenuOption] = [
        DropDownMenuOption(option: "30 seconds"),
        DropDownMenuOption(option: "1 minute"),
        DropDownMenuOption(option: "Infinity at increasing score")]
    
    static let allTestValues: [DropDownMenuOption] = [
        DropDownMenuOption(option: "Primary school"),
        DropDownMenuOption(option: "High school"),
        DropDownMenuOption(option: "Colleague"),
        DropDownMenuOption(option: "Professional")]
    
    
}

struct GameSettings_Previews: PreviewProvider {
    static var previews: some View {
        GameSettings()
//        DropDownMenu(
//            selectedOption: .constant(nil),
//            placeholder: "Select your difficulty",
//            options: DropDownMenuOption.allValues)
    }
}
