//
//  Navigations.swift
//  platzi_course
//
//  Created by Julian Castro Ruge on 27/01/22.
//

import SwiftUI

struct Navigations: View {
    
    @State var isDividersActive: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                VStack {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        Button(action: {isDividersActive.toggle()}, label: {
                            Text("+")
                        })
                        
                    }
                })
                
                NavigationLink("Navigate to text view", destination: TabViews())
                
                NavigationLink(
                    destination: Dividers(),
                    isActive: $isDividersActive,
                    label: {
                        EmptyView()
                    })
                
            }
            
        }
    }
}

struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        Navigations()
    }
}
