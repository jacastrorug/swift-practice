//
//  TextModifiers.swift
//  platzi_course
//
//  Created by Julian Castro Ruge on 25/01/22.
//

import SwiftUI

struct TextModifiers: View {
    var body: some View {
        Text("Hello world!")
            .font(.largeTitle)
            .fontWeight(.thin)
            //.background(Color.accentColor)
            .foregroundColor(.green)
            .padding()
            .frame(width: 300, height: 100, alignment: .trailing)
            .background(Color.accentColor)
    }
}

struct TextModifiers_Previews: PreviewProvider {
    static var previews: some View {
        TextModifiers()
    }
}
