//
//  ContentView.swift
//  StudySwiftUI
//
//  Created by 이홍렬 on 11/27/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            StateExampleView()
                .tabItem {
                    Label("@State", systemImage: "house")
                }

            RandomNumberView()
                .tabItem {
                    Label("@StateObject", systemImage: "plus")
                }

            EnviormentView()
                .tabItem {
                    Label("@Envior", systemImage: "plus")
                }
        }
    }
}

#Preview {
    ContentView()
}
