//
//  ContentView.swift
//  Roll the Dice
//
//  Created by Cameron Voelpel on 11/6/26.
//

import SwiftUI

struct ContentView: View {
    @State var randomValue = 0
    var body: some View {
        VStack {
            Text("Dice Roll")
                .font(.title)
            Image("pips \(randomValue)")
                .resizable()
                .frame(width: 200, height: 200)
                .font(.system(size: 72))
                .padding()
                .onTapGesture {
                    randomValue = Int.random(in: 1...6)
                }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
