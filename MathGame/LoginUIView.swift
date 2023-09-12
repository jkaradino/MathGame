//
//  LoginUIView.swift
//  MathGame
//
//  Created by Jasmin Karadinovic on 12.09.23.
//

import SwiftUI

struct LoginUIView: View {
    var body: some View {
        ZStack {
            Color.cyan
            Image("background").resizable().scaledToFill().edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 100) {
                Circle()
                    .frame(width: 200, height: 200)
                    .foregroundColor(Color.red)
                
                
                VStack {
                    // Login Button
                    Button(action: {
                        print("Login button clicked")
                    }, label: {
                        Text("Login")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                    })
                    .frame(width: 300, height: 50)
                    .background(Color.orange)
                    .cornerRadius(5)
                    
                    // Login Button
                    Button(action: {
                        print("SignUp")
                    }, label: {
                        Text("SignUp")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                    })
                    .frame(width: 300, height: 50)
                    .background(Color.orange)
                    .cornerRadius(5)
                    
                    
                    
                }
                
            }
            
            
        }
        
        
    }
}

struct LoginUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginUIView()
    }
}
