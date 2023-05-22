//
//  ContentView.swift
//  war-challenge
//
//  Created by Hanácsek Gábor on 2023. 05. 14..
//

import SwiftUI

struct ContentView: View {
    
    @State var playercard = "card2"
    @State var cpucard = "card2"
    @State var cpuscore = 0
    @State var playerscore = 0
    
    
    var body: some View {

        
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode:.fill)
                .ignoresSafeArea(.all)
                
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playercard)
                    Spacer()
                    Image(cpucard)
                    Spacer()
                }
                Spacer()
                Button {
                    let playerrandom = Int.random(in: 2...14)
                    let cpurandom = Int.random(in: 2...14)
                    playercard = "card" + String(playerrandom)
                    cpucard = "card" + String(cpurandom)
                    
                    if playerrandom > cpurandom{
                        playerscore += 1
                    }
                    
                    else {
                        cpuscore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }
                Spacer()
                HStack{
                   Spacer()
                    VStack{
                        Text("Player")
                            .fontWeight(.bold)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerscore))
                            .font(Font.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .fontWeight(.bold)
                            .padding(.bottom, 10.0)
                        Text(String(cpuscore))
                            .font(Font.largeTitle)
                        
                    }
                    Spacer()
                }
                .foregroundColor(Color.white)
                
                Spacer()

            }
     
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
