//
//  BindingView.swift
//  StudySwiftUI
//
//  Created by 이홍렬 on 11/27/23.
//

import SwiftUI

struct BindingView: View {

    @Binding var isCompleted: Bool

    var body: some View {
        NavigationView {
            ZStack {
                Toggle(isOn: $isCompleted, label: {
                    Text("Toggle  \(isCompleted ? "ON": "OFF")")
                })
                .padding()
            }
            .navigationTitle("Second View")
        }
    }
}

#Preview {
    BindingView(isCompleted: .constant(true))
}
