//
//  Dividers.swift
//  platzi_course
//
//  Created by Julian Castro Ruge on 25/01/22.
//

import SwiftUI

struct Dividers: View {
    var body: some View {
        
        VStack {
            
            Circle()
                .frame(width: 100, height: 100, alignment: .center)
            
            Text("Black Circle.")
            
            Divider()
                .frame(height: 4)
                .background(Color.brown)
            
            Rectangle()
                .foregroundColor(.gray)
                .frame(width: 200, height: 100, alignment: .center)
            
            Text("Gray Reactangle")
            
        }
        
    }
}

struct Dividers_Previews: PreviewProvider {
    static var previews: some View {
        Dividers()
    }
}
