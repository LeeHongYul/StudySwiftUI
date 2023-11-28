//
//  StudySwiftUIApp.swift
//  StudySwiftUI
//
//  Created by 이홍렬 on 11/27/23.
//

import SwiftUI

@main
struct StudySwiftUIApp: App {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
