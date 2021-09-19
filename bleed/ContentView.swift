//
//  ContentView.swift
//  bleed
//
//  Created by Chris Wu on 9/19/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab : Int = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            BigPill()
                .tabItem {
                    Label("one", systemImage: "list.bullet.rectangle")
                }.tag(0)
            Text("two")
                .tabItem {
                    Label("two", systemImage: "sparkles")
                }.tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
