//
//  ContentView.swift
//  facts!
//
//  Created by Lena Wu on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    private var facts: [Fact] = loadFacts()
    @State private var currentFactIndex = 0
    var body: some View {
        VStack {
            Text("DID YOU KNOW?")
                .font(.headline)
                .padding(.bottom, 5)
            Image("lightbulb")
                .imageScale(.small)
                .padding(.bottom, 5)
            Text(facts[currentFactIndex].title)
                .padding()
                .background(Color.yellow.opacity(0.2))
                .cornerRadius(8)
                .onTapGesture {
                    currentFactIndex = Int.random(in: 0..<facts.count)
                }
            Text("Tap the fact to see another fact!")
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
