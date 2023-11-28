//
//  StateExampleView.swift
//  StudySwiftUI
//
//  Created by 이홍렬 on 11/28/23.
//

import SwiftUI

struct StateExampleView: View {

    @State private var isCompleted: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $isCompleted, label: {
                    Text("Toggle:  \(isCompleted ? "ON" : "OFF")")
                })
                .foregroundColor(.secondary)
                .padding()


                NavigationLink(destination: BindingView(isCompleted: $isCompleted)) {
                    Text("Check Toggle")
                }

            }
            .padding()
            .navigationTitle("First View")
        }
    }
}

#Preview {
    StateExampleView()
}
