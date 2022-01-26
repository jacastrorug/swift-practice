//
//  Images.swift
//  platzi_course
//
//  Created by Julian Castro Ruge on 25/01/22.
//

import SwiftUI

struct Images: View {
    var body: some View {
        
        VStack {
            Text("Images")
            Image("Platzi") // Name of resource
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
            
            Image("Platzi") // Name of resource
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
                .blur(radius: /*@START_MENU_TOKEN@*/4.0/*@END_MENU_TOKEN@*/)
            
            Image("Platzi") // Name of resource
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
                .opacity(0.8)
            
            Button(action: self.platziButtonAction, label: {
                
                Image("Platzi") // Name of resource
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100, alignment: .center)
                
            })
            
            Image(systemName: "moon.fill")
                .foregroundColor(.green)
            
        }
        
    }
    
    func platziButtonAction() {
        print("Platzi button pressed")
    }
    
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
