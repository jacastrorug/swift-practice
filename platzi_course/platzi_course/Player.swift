//
//  Player.swift
//  platzi_course
//
//  Created by Julian Castro Ruge on 27/01/22.
//

import SwiftUI
import AVKit

struct Player: View {
    
    @State var isPlayerActive: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Button(action: {isPlayerActive.toggle()}, label: {
                    
                    ZStack {
                        Image("cuphead")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Image(systemName: "play.fill")
                            .foregroundColor(.white)
                            .frame(width: 43.0, height: 40)
                    }

                })
                
                NavigationLink(
                    destination: VPlayerView(),
                    isActive: $isPlayerActive,
                    label: {
                        EmptyView()
                    })
                
            }
            
        }
        
    }
}

struct VPlayerView: View {
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: URL(string: "https://cdn.cloudflare.steamstatic.com/steam/apps/256705156/movie480.mp4")!))
            .frame(width: 420, height: 360, alignment: .center)
    }
    
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        Player()
    }
}
