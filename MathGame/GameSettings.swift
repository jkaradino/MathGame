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
    
    @State private var placeholder: String = "Select your difficulty"
    
    @State private var selectionSaved: Bool = true
    
    @State private var clickedToSave: Bool = false
    
    @State private var difficulty: DropDownMenuOption? = nil
    
    @State private var timeLimit: DropDownMenuOption? = nil
    
    @State private var testOptions: DropDownMenuOption? = nil
    
    
    var body: some View {
        var initDifficulty = difficulty
        var newSelected: Bool? = true
        
        var selectedDifficulty = selectionSaved ? placeholder : "df"
        
        //var changedSelection = selectedDifficulty == initDifficulty ? true : false
        
        //var savedSelection =
        
        
        
        VStack(alignment: .leading) {
            Text("Game Settings")
                .font(.custom("American Typewriter", size: 30))
                .padding()
                Spacer()
            
            ScrollView {
                
                
                GroupBox {
                    HStack {
                        Text("Username")
                        TextField("text", text: $username)
                    }
                }
                
                /// Difficulty drop down menu
                GroupBox {
                    VStack(alignment: .leading) {
                        
                        Text("Difficulty")
                            .bold()
                            .padding(.horizontal)
                        
                        
                        // selectedOption == nil ? "Select your difficulty" : "test"
                        
                        DropDownMenu(
                            selectedOption: self.$difficulty,
                            placeholder: selectionSaved == true ? selectedDifficulty : placeholder,
                            options: DropDownMenuOption.allValues,
                            clickedToSave: false)
                        
                        HStack {
                            Button(action: {
                                selectionSaved.toggle()
                            }, label: {
                                Text("Save")
                            })
                            .padding(.horizontal)
                            
                            Text(difficulty?.option ?? "")
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
                        
                        
                        // selectedOption == nil ? "Select your difficulty" : "test"
                        
                        DropDownMenu(
                            selectedOption: self.$timeLimit,
                            placeholder: "Placeholder",
                            options: DropDownMenuOption.allTimeValues,
                        clickedToSave: false)
                        
                        HStack {
                            Button(action: {
                                selectionSaved.toggle()
                            }, label: {
                                Text("Save")
                            })
                            .padding(.horizontal)
                            
                            Text(timeLimit?.option ?? "")
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
                            selectedOption: clickedToSave ? self.$testOptions :  self.$testOptions,
                            placeholder: "Choose your status",
                            options: DropDownMenuOption.allTestValues,
                        clickedToSave: clickedToSave)
                        
                        
                        HStack {
                            
                            if clickedToSave {
                                Button(action: {
                                    clickedToSave.toggle()
                                }, label: {
                                    Text("Save")
                                    
                                        .onChange(of: testOptions?.option) { _ in
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
                                        
                                        .onChange(of: testOptions?.option) { _ in
                                                    self.clickedToSave = false
                                                }
                                })
                                
                                .padding(.horizontal)
                            }
                            
                            
                            Spacer()
                            Text(testOptions?.option ?? "")
                                .foregroundColor(.gray)
                                .padding(.horizontal)
                                .italic()
                                .opacity(clickedToSave == true ? 1 : 0)
                        }
                        
                        //Spacer()
                        //.padding(.vertical)
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
