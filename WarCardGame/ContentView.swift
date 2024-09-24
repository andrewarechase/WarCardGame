//
//  ContentView.swift
//  WarCardGame
//
//  Created by Andrew Chase on 7/31/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Color(.systemGreen)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                
                Button {
                    resetScore()
                } label: {
                    Image("reset")
                }
            }
            
        }
        
    }
    
    
    func resetScore() {
        playerScore = 0
        cpuScore = 0
    }
    
    func deal() {
        //Randomize the players' card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize the cpu's card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //Update the scores
        if playerCardValue > cpuCardValue {
            //Add 1 to player score
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            //Add 1 to cpu score
            cpuScore += 1
        }
        else  {
            //Tie
        }
    }
    
}

  

#Preview {
    ContentView()
}

