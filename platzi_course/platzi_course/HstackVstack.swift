//
//  HstackVstack.swift
//  platzi_course
//
//  Created by Julian Castro Ruge on 26/01/22.
//

import SwiftUI

struct HstackVstack: View {
    var body: some View {
        VStack(alignment: .trailing) {
            Text("1").border(Color.black)
            Text("2")
            Text("3")
            
            HStack(alignment: .top, spacing: 0) {
                Text("A")
                    .frame(width: 100, height: 100, alignment: .center)
                    .border(Color.black)
                Text("B")
                Spacer()
                Text("C")
                
            }
            .background(Color.red)
            
        }
        .border(Color.red)
        .background(Color.blue)
    }
}

struct HstackVstack_Previews: PreviewProvider {
    static var previews: some View {
        
        Image("Challenge")
        HstackVstack()
    }
}
