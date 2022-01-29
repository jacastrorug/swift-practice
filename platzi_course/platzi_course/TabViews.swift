//
//  TabViews.swift
//  platzi_course
//
//  Created by Julian Castro Ruge on 27/01/22.
//

import SwiftUI

struct TabViews: View {
    
    var body: some View {
        
        TabView {
            
            TextModifiers().tabItem {
                Text("View 1")
                Image(systemName: "sun.haze.fill")
            }
            
            TextFields().tabItem {
                Text("View 2")
                Image(systemName: "play")
            }
            
            ZstackPadding().tabItem {
                
                Text("View 3")
                Image(systemName: "terminal")
                
            }
            
            
        }
        
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
