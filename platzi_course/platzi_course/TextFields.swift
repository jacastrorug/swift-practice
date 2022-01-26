//
//  TextFields.swift
//  platzi_course
//
//  Created by Julian Castro Ruge on 25/01/22.
//

import SwiftUI

struct TextFields: View {
    
    @State var textView: String = "Hiii!!"
    
    var body: some View {
        
        VStack {
            Text(self.textView)
                .font(.title)
            
            TextField("Write your password", text: self.$textView)
            
            Button(action: self.changeTextView, label: {
                Text("Change text view")
                    .foregroundColor(.white)
            })
                .padding()
                .background(.blue)
            
        }
        
    }
    
    func changeTextView() {
        self.textView = "Hi, Julian. \(Int.random(in: 10...20))"
    }
    
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
