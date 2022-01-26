//
//  Buttons.swift
//  platzi_course
//
//  Created by Julian Castro Ruge on 25/01/22.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        
        VStack {
        
            Button("My button", action: {
                print("Button clicked")
            })
            
            Button("My button 2") {
                print("Button 2 clicked")
            }

            Button(action: self.greeting, label: {
                Text("Button with label")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color.blue)
                    
            })
            
        }
        
    }
    
    func greeting() -> Void {
        print("Hi, from a external function")
    }
    
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
