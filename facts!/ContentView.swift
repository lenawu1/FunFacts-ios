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
            Image("lightbulb")
                .imageScale(.small)
            Text(facts[currentFactIndex].title)
                            .padding()
            Text("Click to see another cool fact!")
        }
        .onTapGesture {
            currentFactIndex = Int.random(in: 0..<facts.count)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
