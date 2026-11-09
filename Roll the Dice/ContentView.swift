//
//  ContentView.swift
//  Roll the Dice
//
//  Created by Cameron Voelpel on 11/6/26.
//

import SwiftUI

struct ContentView: View {
    @State var randomValue = 0
    @State var rotation = 0.0
    var body: some View {
        VStack {
            Text("Dice Roll")
                .font(.title)
            Image("pips \(randomValue)")
                .resizable()
                .frame(width: 200, height: 200)
                .font(.system(size: 72))
                .padding()
                .rotationEffect(.degrees(rotation))
                .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                .onTapGesture {
                    randomValue = Int.random(in: 1...6)
                    withAnimation {
                        rotation += 360
                    }
                }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
