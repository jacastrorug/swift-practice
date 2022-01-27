//
//  ZstackPadding.swift
//  platzi_course
//
//  Created by Julian Castro Ruge on 26/01/22.
//

import SwiftUI

struct ZstackPadding: View {
    
    var body: some View {
        ZStack {
            Color.yellow
            
            Rectangle()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.blue)
                .rotationEffect(Angle.degrees(9))
            
            Rectangle()
                .frame(width: 200, height: 200, alignment: .center)
                .foregroundColor(.green)
                .rotationEffect(Angle.degrees(20))
            
            VStack {
                
                BadgesPlatzi() // Call different module
                
                Text("Welcome to the course")
                    .foregroundColor(.black)
                
                Data()
                
                
            }
        }
        .ignoresSafeArea()
    }
}

struct BadgesPlatzi: View {
    
    var body: some View {
        
        VStack {
            Image("Platzi")
                .resizable()
                .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100, alignment: .center)
            Image("Platzi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
            
            Image("Platzi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
        }
        
    }
    
}


struct Data: View {
    
    @State var course: String = ""
    
    var body: some View {
        ZStack {
            if self.course.isEmpty {
                Text("Course")
                    .foregroundColor(.blue)
            }
            
            TextField("Course", text: self.$course)
                .padding(.leading, 8.0)
        }
    }
    
}


struct ZstackPadding_Previews: PreviewProvider {
    static var previews: some View {
        ZstackPadding()
        BadgesPlatzi()
        Data()
    }
}
